<template>
  <main>
    <p>Hi</p>
    <div ref="input" class="square" @click="submit"></div>
    <CommeanLogo />
    <Subtitle />
    <BackgroundMap />

    <div class="motion-path">
      <div id="vehicle-01" class="square-abs"></div>
      <div id="vehicle-02" class="square-abs"></div>
      <svg
        width="210mm"
        height="297mm"
        version="1.1"
        viewBox="0 0 210 297"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          d="m29.961-0.18323v86.056c0 15.284 0.0041 15.321 15.321 15.321h167.34"
          fill="none"
          stroke="#000"
          stroke-width="1px"
        />
      </svg>
    </div>
  </main>
</template>

<style>
.square {
  background-color: red;
  height: 10px;
  width: 10px;
}
.square-abs {
  background-color: red;
  height: 10px;
  width: 10px;
  position: absolute;
}
</style>

<script lang="ts">
import BackgroundMap from "./../components/BackgroundMap.vue";
import CommeanLogo from "./../components/icons/CommeanLogo.vue";
import Subtitle from "./../components/icons/Subtitle.vue";

import anime from "animejs/lib/anime.es.js";

export default {
  mounted() {
    console.log(`the component is now mounted.`);
  },
  components: {
    BackgroundMap,
    CommeanLogo,
    Subtitle,
  },
  methods: {
    submit() {
      console.log("h");
      var path = anime.path(".motion-path path");

      anime({
        targets: ".motion-path #vehicle-01",
        translateX: path("x"),
        translateY: path("y"),
        rotate: path("angle"),
        easing: function (el, i, total) {
          return function (t) {
            return t * (i + 1);
          };
        },
        duration: 5000,
        loop: true,
      });

      anime({
        targets: ".motion-path #vehicle-02",
        translateX: path("x"),
        translateY: path("y"),
        rotate: path("angle"),
        easing: "easeInOutBounce",
        duration: 5000,
        loop: true,
        delay: 150,
      });
    },
  },
};
</script>
