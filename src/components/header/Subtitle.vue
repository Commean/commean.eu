<template>
  <div class="subtitle">
    <h2>Commeatus Analysis</h2>
  </div>
</template>

<style lang="scss">
@import "..//src/scss/_variables.scss";

.subtitle h2 {
  margin: 0 auto;
  border: 2px solid;
  border-left: 0;
  border-right: 0;
  padding: 0px 10px;
  text-align: center;
  font-weight: normal;

  @media (min-width: $switch-to-desktop-view) {
    margin: 20px auto 0;
  }
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
