<template>
  <section class="grid-container">
    <h1><span class="keyword">Smart</span> traffic analysis with AI 🧠</h1>
    <p>
      Analyze the traffic (flow), collect statistics, detect bottlenecks and
      much more.
    </p>
    <div class="animation">
      <ScanCars />
    </div>
  </section>
</template>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";

section {
  display: grid;

  grid-template-areas: "header" "text" "animation";

  @media (min-width: 1000px) {
    grid-template-columns: 550px auto;
    grid-template-areas: "header animation" "text animation";
    margin: 0 auto;
  }

  max-width: $max-width;
  padding: 50px 20px;

  h1 {
    grid-area: header;
    .keyword {
      color: var(--color-text-emph);
      font-weight: 900;
    }
  }

  p {
    grid-area: text;
  }

  .animation {
    grid-area: animation;
    height: auto;

    display: flex;
    align-items: center;
    justify-content: center;
  }
}
</style>

<script setup lang="ts">
import ScanCars from "./../animation/ScanCars.vue";
</script>

<script lang="ts">
export default {
  setup() {},
};
</script>
