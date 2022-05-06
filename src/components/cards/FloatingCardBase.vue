<template>
  <div class="card">
    <div class="header">
      <h4>
        <slot name="heading"></slot>
      </h4>
      <div class="icon icon-auto-theme"><slot name="icon"></slot></div>
    </div>
    <div class="details">
      <slot></slot>
    </div>
  </div>
</template>

<style lang="scss" scoped>
@import "scss/base.scss";
</style>

<style lang="scss">
.card {
  .header {
    .icon {
      img {
        height: 64px;
        width: 64px;
        margin: 0 auto;
      }
    }
  }
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
