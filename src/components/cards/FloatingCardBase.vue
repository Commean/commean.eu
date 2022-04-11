<template>
  <section class="card">
    <h2>
      <slot name="heading"></slot>
    </h2>
    <div><slot name="icon"></slot></div>
    <div class="details">
      <slot></slot>
    </div>
  </section>
</template>

<style lang="scss" scoped>
.card {
  display: inline-grid;
  background-color: white;
  padding: 10px;
  box-shadow: 0 2px 4px 0 black;
  border-radius: 25px;
}
</style>

<script lang="ts">
import anime from "animejs/lib/anime.es.js";

export default {
  mounted() {
    anime({
      targets: ".card",
      translateX: [750, 0],
      duration: 1000,
      delay: anime.stagger(100),
      easing: "easeOutCubic",
    });
  },
};
</script>
