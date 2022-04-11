<template>
  <main>
    <p @click="submit">Hi</p>
    <CommeanLogo />
    <Subtitle />
    <BackgroundMap />
    <Cards />
  </main>
</template>

<style></style>

<script setup lang="ts">
import BackgroundMap from "./../components/BackgroundMap.vue";
import Cards from "./../components/cards/Cards.vue";
import CommeanLogo from "./../components/header/CommeanLogo.vue";
import Subtitle from "./../components/header/Subtitle.vue";
</script>

<script lang="ts">
export default {
  mounted() {
    console.log(`the component is now mounted.`);
  },
  methods: {
    submit() {
      console.log("Test");
    },
  },
};
</script>
