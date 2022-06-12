<template>
  <Team />
  <Competitions />
  <Contributors />
</template>

<script setup lang="ts">
import Contributors from "./../components/section/Contributors.vue";
import Competitions from "./../components/section/Competitions.vue";
import Team from "./../components/section/Team.vue";
</script>

<style lang="scss" scoped>
h1 {
  text-align: center;
}
</style>
