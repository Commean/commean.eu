<template>
  <section class="grid-container">
    <h1>Smart traffic analysis with AI</h1>
    <p>
      Analyze the traffic (flow), collect statistics, detect bottlenecks and
      much more.
    </p>
    <div class="animation">
      <!-- <img src="/src/assets/about/static.svg" /> -->
      <ScanCars />
    </div>
  </section>
</template>

<style lang="scss" scoped>
@namespace xlink "http://www.w3.org/1999/xlink";
@import "/src/scss/_variables.scss";

section {
  display: grid;

  grid-template-areas: "header animation" "text animation";
  grid-template-columns: 550px auto;

  max-width: 1000px;
  margin: 150px auto 50px;

  h1 {
    grid-area: header;
  }

  p {
    grid-area: text;
  }

  .animation {
    grid-area: animation;
    height: 100px;
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
