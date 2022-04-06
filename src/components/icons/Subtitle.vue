<template>
  <div class="subtitle">
    <h1>Commeatus Analysis</h1>
  </div>
</template>

<style>
.subtitle h1 {
  margin: 20px auto;
  border: 2px solid;
  border-left: 0;
  border-right: 0;
  padding: 0px 10px;
  text-align: center;
}
</style>

<script lang="ts">
import anime from "animejs/lib/anime.es.js";

export default {
  mounted() {
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
};
</script>
