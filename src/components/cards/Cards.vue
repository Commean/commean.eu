<template>
  <section>
    <BackgroundMap />
    <div class="grid-container">
      <FloatingCard>
        <template #heading>Open Source</template>
        <template #icon><img src="/src/assets/icons/code_24dp.svg" /></template>
        Commean is Open Source. This means that the source code can be looked up
        by <i>everybody</i>. This is important to us, because otherwise this
        would just be a black box and nobody (except us) would know what is
        happening. <br /><br />
        The source code can be found at
        <a href="https://gitlab.com/commean">GitLab</a>.
      </FloatingCard>
      <FloatingCard>
        <template #heading>Local processing</template>
        <template #icon
          ><img src="/src/assets/icons/memory_24dp.svg"
        /></template>
        Every <a href="#TODO">node</a> processes all the data locally. This
        means that the video stream never enters the cloud or an external
        server.<br /><br />
        The local processing of the video stream not only guarantees more
        privacy for everyone, but it also allows low bandwidth connections such
        as LoRaWAN (TheThingsNetwork).
      </FloatingCard>
      <FloatingCardWide>
        <template #heading>Privacy</template>
        <template #icon
          ><img src="/src/assets/icons/security_24dp.svg"
        /></template>
        Privacy is a major concern for us. It is important that a system is
        used, which respects privacy. Other solutions may send a video stream to
        an external server, which is a major problem. Commean doing all the
        processing locally, which protects everyone's privacy. Only the measured
        data, such as the amount of vehicles passed, is leaving each node.
      </FloatingCardWide>
    </div>
  </section>
</template>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";

section {
  overflow: hidden;
  .grid-container {
    display: grid;
    grid-template-columns: repeat(1, 1fr);
    grid-gap: 20px;
    max-width: $max-width;
    margin: 50px auto;
    padding: 0 20px;

    @media (min-width: $switch-to-desktop-view) {
      grid-template-columns: repeat(2, 1fr);
    }
  }
}
</style>

<script setup lang="ts">
import BackgroundMap from "./../background/BackgroundMap.vue";
import FloatingCard from "./FloatingCard.vue";
import FloatingCardWide from "./FloatingCardWide.vue";
</script>

<script lang="ts">
export default {
  setup() {},
};
</script>
