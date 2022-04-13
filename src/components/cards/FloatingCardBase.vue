<template>
  <section class="card">
    <div class="header">
      <h2>
        <slot name="heading"></slot>
      </h2>
      <div class="icon"><slot name="icon"></slot></div>
    </div>
    <div class="details">
      <slot></slot>
    </div>
  </section>
</template>

<style lang="scss">
.card {
  display: inline-grid;
  background-color: var(--color-background-soft);
  box-shadow: 0 2px 4px 0 black;
  border-radius: 25px;
  overflow: hidden;

  $margin-card: 10px;
  $icon-size: 64px;
  grid-template-areas: "header" "details";
  grid-template-rows: calc($icon-size + 2 * $margin-card) auto;

  .header {
    grid-areas: "header";
    display: inline-grid;
    background: rgb(246, 174, 45);
    background: linear-gradient(
      45deg,
      var(--color-gradient-1) 0%,
      var(--color-gradient-2) 35%,
      var(--color-gradient-3) 100%
    );
    color: var(--color-text-inverse);
    padding: 0 25px;
    grid-template-areas: "headline icon";
    grid-template-columns: auto $icon-size;

    h2 {
      grid-area: headline;
      width: 100%;
      margin: auto;
    }

    .icon {
      grid-area: icon;
      height: $icon-size;
      margin: $margin-card 0;

      img {
        height: $icon-size;
        width: $icon-size;
        margin: 0 auto;
      }
    }
  }

  .details {
    padding: 15px 25px;
    grid-area: details;
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
