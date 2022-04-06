<template>
  <main>
    <p>Hi</p>
    <div ref="input" class="square" @click="submit"></div>
    <CommeanLogo />
    <Subtitle />
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
import CommeanLogo from "./../components/icons/CommeanLogo.vue";
import Subtitle from "./../components/icons/Subtitle.vue";

export default {
  mounted() {
    console.log(`the component is now mounted.`);
  },
  components: {
    CommeanLogo,
    Subtitle,
  },
};
</script>