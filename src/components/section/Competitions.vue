<template>
  <section>
    <h1>Competitions</h1>
    <FHCarinthia />
    <Bosch />
  </section>
</template>

<script setup lang="ts">
import Bosch from "./Bosch.vue";
import FHCarinthia from "./FHCarinthia.vue";
</script>

<script lang="ts">
export default {};
</script>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";
@import "scss/base.scss";
</style>
