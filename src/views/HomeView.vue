<template>
  <main>
    <p @click="submit">Hi</p>
    <CommeanLogo />
    <Subtitle />
    <BackgroundMap />
    <FloatingCard>
      <template #heading>Open Source</template>
      <template #icon>TODO</template>

      Commean is Open Source.
    </FloatingCard>
  </main>
</template>

<style></style>

<script lang="ts">
import BackgroundMap from "./../components/BackgroundMap.vue";
import CommeanLogo from "./../components/icons/CommeanLogo.vue";
import FloatingCard from "./../components/FloatingCard.vue";
import Subtitle from "./../components/icons/Subtitle.vue";

export default {
  mounted() {
    console.log(`the component is now mounted.`);
  },
  components: {
    BackgroundMap,
    CommeanLogo,
    FloatingCard,
    Subtitle,
  },
  methods: {
    submit() {
      console.log("h");
    },
  },
};
</script>
