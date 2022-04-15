<script setup lang="ts">
import Navbar from "/src/components/Navbar.vue";
import { RouterView } from "vue-router";
</script>

<template>
  <Navbar />
  <RouterView />
</template>

<style>
@import "@/assets/base.css";
@import "@/assets/font.css";
</style>
