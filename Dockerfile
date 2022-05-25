ARG BUILD_PATH=/commean/commean.eu
ARG SERVE_PATH=/usr/share/nginx/html


FROM node:current-alpine3.15 AS build_env
ARG BUILD_PATH

WORKDIR ${BUILD_PATH}
RUN apk add git
RUN git clone https://gitlab.com/commean/other/commean.eu.git ${BUILD_PATH}
#COPY . ${BUILD_PATH}

RUN npm install
RUN npm run build


FROM nginx:stable-alpine
ARG BUILD_PATH
ARG SERVE_PATH
EXPOSE 80/tcp

COPY --from=build_env ${BUILD_PATH}/dist ${SERVE_PATH}
COPY docker/nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
