<template>
  <main>
    <p @click="submit">Hi</p>
    <CommeanLogo />
    <Subtitle />
    <BackgroundMap />
  </main>
</template>

<style></style>

<script lang="ts">
import BackgroundMap from "./../components/BackgroundMap.vue";
import CommeanLogo from "./../components/icons/CommeanLogo.vue";
import Subtitle from "./../components/icons/Subtitle.vue";

export default {
  mounted() {
    console.log(`the component is now mounted.`);
  },
  components: {
    BackgroundMap,
    CommeanLogo,
    Subtitle,
  },
  methods: {
    submit() {
      console.log("h");
    },
  },
};
</script>
