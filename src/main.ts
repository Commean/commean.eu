import { createApp } from 'vue'
import App from './App.vue'
import router from './router'

import VueLogger from 'vuejs3-logger';

const isProduction = process.env.NODE_ENV === 'production';
 
const options = {
    isEnabled: true,
    logLevel : isProduction ? 'error' : 'debug',
    stringifyArguments : false,
    showLogLevel : true,
    showMethodName : true,
    separator: '|',
    showConsoleColors: true
};

const app = createApp(App).use(VueLogger, options);

app.use(router)

app.mount('#app')
