<template>
  <section>
    <h1>Quotes</h1>
    <Blockquote></Blockquote>
  </section>
</template>

<script setup lang="ts">
import Blockquote from "/src/components/blockquote/Blockquote.vue";
</script>

<script lang="ts">
export default {};
</script>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";
@import "scss/base.scss";

p {
  text-align: center;
}
.team-flex {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin: 20px;
}
</style>
