<template>
  <main>
    <p>Hi</p>
    <div ref="input" class="square el" @click="submit"></div>
  </main>
</template>

<style >
.square {
  background-color: red;
  height: 10px;
  width: 10px;
}
</style>

<script lang="ts">
import anime from "animejs/lib/anime.es.js";

export default {
  methods: {
    submit() {
      console.log(this.$refs.input);
      anime({
        targets: this.$refs.input,
        points: "64 128 8.574 96 8.574 32 64 0 119.426 32 119.426 96",
        baseFrequency: 0,
        scale: 1,
        loop: true,
        direction: "alternate",
        easing: "easeInOutExpo",
      });
    },
  },
};
</script>