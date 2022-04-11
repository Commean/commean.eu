<template>
  <div class="grid-container">
    <FloatingCard>
      <template #heading>Open Source</template>
      <template #icon><img src="/src/assets/icons/code_24dp.svg" /></template>

      Commean is Open Source.
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
