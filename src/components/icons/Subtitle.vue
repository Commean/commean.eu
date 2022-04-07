<template>
  <div class="subtitle">
    <h1 class="subtitle-text">Commeatus Analysis</h1>
  </div>
</template>

<style>
.subtitle h1 {
  margin: 20px auto 0px;
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
      targets: ".subtitle",
      easing: "spring(1, 80, 10, 0)",
      duration: 750,
      translateX: [1000, 0],
    });
  },
};
</script>
