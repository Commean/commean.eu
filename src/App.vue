<script setup lang="ts">
import Footer from "./components/navigation/Footer.vue";
import Navbar from "./components/navigation/Navbar.vue";
import RTT from "./components/navigation/RTT.vue";
import { RouterView } from "vue-router";
</script>

<template>
  <Navbar />
  <RouterView />
  <Footer />
  <RTT />
</template>

<style lang="scss">
@import "@/assets/base.css";
@import "@/assets/font.css";
@import "@/assets/icons/icon.scss";
</style>
