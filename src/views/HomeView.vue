<template>
  <main>
    <p>Hi</p>
    <div ref="input" class="square" @click="submit"></div>

    <div id="commean" class="line-drawing"></div>
  </main>
</template>

<style >
.square {
  background-color: red;
  height: 10px;
  width: 10px;
}

#commean svg {
  height: 128px;
  width: 100%;

  display: flex;
  justify-content: center;
}
</style>

<script lang="ts">
import { createApp } from "vue";
import logo from "./../components/icons/CommeanLogo.vue";

export default {
  setup() {},
  mounted() {
    console.log(`the component is now mounted.`);
    createApp(logo).mount("#commean");
  },
  methods: {
    submit() {},
  },
};
</script>