<template>
  <!-- https://gist.github.com/Loilo/73c55ed04917ecf5d682ec70a2a1b8e2 -->
  <FloatingCardBase>
    <template v-for="(_, name) in $slots" v-slot:[name]="slotData"
      ><slot :name="name" v-bind="slotData"
    /></template>
  </FloatingCardBase>
</template>

<script setup lang="ts">
import FloatingCardBase from "./FloatingCardBase.vue";
</script>

<script lang="ts">
export default {
  setup() {},
};
</script>