<template>
  <Team />
  <FHCarinthia />
  <Bosch />
  <Contributors />
</template>

<script setup lang="ts">
import Contributors from "./../components/section/Contributors.vue";
import Bosch from "./../components/section/Bosch.vue";
import FHCarinthia from "./../components/section/FHCarinthia.vue";
import Team from "./../components/section/Team.vue";
</script>

<style lang="scss" scoped>
h1 {
  text-align: center;
}
</style>
