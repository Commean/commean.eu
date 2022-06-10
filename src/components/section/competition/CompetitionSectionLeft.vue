<template>
  <section>
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
@import "/src/scss/_variables.scss";

section {
  display: grid;

  max-width: 1500px;
  margin: 0 auto;

  @media (max-width: $switch-to-desktop-view) {
    grid-template-columns: 90%;
    grid-template-areas: "title" "image" "details";
    justify-content: center;
    grid-gap: 20px;
  }

  @media (min-width: $switch-to-desktop-view) {
    grid-template-columns: 600px auto;
    grid-template-areas: "image title" "image details";
  }

  .text-bottom {
    display: flex;
    justify-content: center;
    align-items: flex-end;

    @media (min-width: $switch-to-desktop-view) {
      justify-content: left;
    }

    h2 {
      grid-area: title;
      margin-bottom: 0;
    }
  }
  .text {
    grid-area: details;
  }

  img {
    grid-area: image;
    max-width: 100%;
    clip-path: polygon(10% 0, 0 100%, 90% 100%, 100% 0);

    @media (min-width: $switch-to-desktop-view) {
      clip-path: polygon(0 0, 0 100%, 75% 100%, 100% 0);
    }
  }
}
</style>
