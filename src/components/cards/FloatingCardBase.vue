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
  box-shadow: 0 5px 10px 0 inset black;
  border-radius: 25px;
}
</style>

<script lang="ts">
import anime from "animejs/lib/anime.es.js";

export default {
  mounted() {
    anime({
      targets: ".card",
      keyframes: [
        { boxShadow: "0 5px 10px 0 inset black" },
        { boxShadow: "0 2px 0 0 inset black" },
        { boxShadow: "0 0 0 0 black" },
        { boxShadow: "0 5px 10px 0 black" },
      ],
      duration: 1000,
      delay: 0,
    });
  },
};
</script>
