<script setup lang="ts">
import Footer from "./components/Footer.vue";
import Navbar from "./components/Navbar.vue";
import RTT from "./components/RTT.vue";
import { RouterView } from "vue-router";
</script>

<template>
  <Navbar />
  <RouterView />
  <Footer />
  <RTT />
</template>

<style>
@import "@/assets/base.css";
@import "@/assets/font.css";
</style>
