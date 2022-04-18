<template>
  <!-- https://gist.github.com/Loilo/73c55ed04917ecf5d682ec70a2a1b8e2 -->
  <FloatingCardBase>
    <template v-for="(_, name) in $slots" v-slot:[name]="slotData"
      ><slot :name="name" v-bind="slotData"
    /></template>
  </FloatingCardBase>
</template>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";

.card {
  @media (min-width: $switch-to-desktop-view) {
    grid-column: 1 / span 2;
    margin: auto 20%;
  }
}
</style>

<script setup lang="ts">
import FloatingCardBase from "./FloatingCardBase.vue";
</script>

<script lang="ts">
export default {
  setup() {},
};
</script>
