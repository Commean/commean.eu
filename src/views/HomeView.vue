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

<script lang="ts">
import BackgroundMap from "./../components/BackgroundMap.vue";
import Cards from "./../components/cards/Cards.vue";
import CommeanLogo from "./../components/icons/CommeanLogo.vue";
import Subtitle from "./../components/icons/Subtitle.vue";

export default {
  mounted() {
    console.log(`the component is now mounted.`);
  },
  components: {
    BackgroundMap,
    Cards,
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
