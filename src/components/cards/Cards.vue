<template>
  <div class="grid-container">
    <FloatingCard>
      <template #heading>Open Source</template>
      <template #icon><img src="/src/assets/icons/code_24dp.svg" /></template>
      Commean is Open Source. This means that the source code can be looked up
      by <i>everybody</i>. This is important to us, because otherwise this would
      just be a black box and nobody (except us) would know what is happening.
      <br /><br />
      The source code can be found at
      <a href="https://gitlab.com/commean">GitLab</a>.
    </FloatingCard>
    <FloatingCard>
      <template #heading>Local processing</template>
      <template #icon><img src="/src/assets/icons/memory_24dp.svg" /></template>

      Commean is Open Source.
    </FloatingCard>
    <FloatingCardWide>
      <template #heading>Local processing</template>
      <template #icon
        ><img src="/src/assets/icons/security_24dp.svg"
      /></template>

      Commean is Open Source.
    </FloatingCardWide>
  </div>
</template>

<style>
.grid-container {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 20px;
  max-width: 1000px;
  margin: 50px auto;
  padding: 0 20px;
}
</style>

<script setup lang="ts">
import FloatingCard from "./FloatingCard.vue";
import FloatingCardWide from "./FloatingCardWide.vue";
</script>

<script lang="ts">
export default {
  setup() {},
};
</script>
