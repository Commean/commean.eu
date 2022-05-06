<template>
  <div class="card-member">
    <div class="header">
      <h4>
        <slot name="heading"></slot>
      </h4>
    </div>
    <div class="icon"><slot name="icon"></slot></div>
    <div class="contact icon-auto-theme icon-with-link"><slot name="contact"></slot></div>
    <div class="details"><slot></slot></div>
  </div>
</template>

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

<style lang="scss">
@import "scss/base.scss";
</style>
