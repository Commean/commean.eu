<template>
  <main>
    <p>Hi</p>
    <div ref="input" class="square" @click="submit"></div>

    <div id="commean" class="line-drawing"></div>
  </main>
</template>

<style >
.square {
  background-color: red;
  height: 10px;
  width: 10px;
}

#commean svg {
  height: 128px;
  width: 100%;

  display: flex;
  justify-content: center;
}
</style>

<script lang="ts">
import { createApp } from "vue";
import anime from "animejs/lib/anime.es.js";
import logo from "./../components/icons/CommeanLogo.vue";

export default {
  setup() {},
  mounted() {
    console.log(`the component is now mounted.`);
    createApp(logo).mount("#commean");
    anime({
      targets: ".line-drawing .lines path",
      strokeDashoffset: [anime.setDashoffset, 0],
      easing: "easeOutBounce",
      duration: 1500,
      delay: function (el, i) {
        return i * 100;
      },
    });
  },
  methods: {
    submit() {},
  },
};
</script>