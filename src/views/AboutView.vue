<template>
  <Team />
  <Competitions />
  <Contributors />
</template>

<script setup lang="ts">
import Contributors from "./../components/section/about/Contributors.vue";
import Competitions from "./../components/section/about/Competitions.vue";
import Team from "./../components/section/about/Team.vue";
</script>

<style lang="scss" scoped>
h1 {
  text-align: center;
}
</style>
