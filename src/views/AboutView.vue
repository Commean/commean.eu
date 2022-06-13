<template>
  <Team />
  <Competitions />
  <Quotes />
  <Contributors />
</template>

<script setup lang="ts">
import Competitions from "./../components/section/about/Competitions.vue";
import Contributors from "./../components/section/about/Contributors.vue";
import Quotes from "./../components/section/about/Quotes.vue";
import Team from "./../components/section/about/Team.vue";
</script>

<style lang="scss" scoped>
h1 {
  text-align: center;
}
</style>
