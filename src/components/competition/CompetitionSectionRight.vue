<template>
  <section class="competition-right">
    <div class="text-bottom">
      <h2><slot name="title"></slot></h2>
    </div>
    <img :src="image" />
    <div class="text">
      <slot name="text"></slot>
    </div>
  </section>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  props: {
    image: String,
  },
});
</script>

<style lang="scss" scoped>
@import "scss/base.scss";
</style>
