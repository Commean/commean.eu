<template>
  <FloatingCardTeamMember>
    <template #heading>Stefan Pisjak</template>
    <template #icon
      ><img
        src="https://gitlab.com/commean/other/big-files/images-01/-/raw/main/team/stefan_pisjak.jpg"
    /></template>
    <ul>
      <li>Recognition, Classification &amp; Tracking of vehicles</li>
      <li>commean.eu</li>
      <li>Communication via LoRa</li>
    </ul>
  </FloatingCardTeamMember>

  <FloatingCardTeamMember>
    <template #heading>Luca Nachbar</template>
    <template #icon><img /></template>
    <ul>
      <li>Backend</li>
      <li>Frontend</li>
    </ul>
  </FloatingCardTeamMember>
</template>

<script setup lang="ts">
import FloatingCardTeamMember from "./../cards/FloatingCardTeamMember.vue";
</script>

<script lang="ts">
export default {};
</script>

<style></style>
