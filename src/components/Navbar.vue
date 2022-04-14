<template>
  <header>
    <nav>
      <RouterLink to="/">HOME</RouterLink>
      <RouterLink to="/about">ABOUT</RouterLink>
    </nav>
  </header>
</template>

<style lang="scss">
@import "/src/scss/_variables.scss";

nav {
  width: 100%;

  a {
    margin: 0 25px;
    text-decoration: none;

    &:before,
    &:after {
      position: absolute;
      opacity: 0;
      width: 0%;
      height: 2px;
      content: "";
      background: var(--color-nav-background);
      transition: all 0.3s;
    }

    &:before {
      left: 0px;
      top: 0px;
    }

    &:after {
      right: 0px;
      bottom: 0px;
    }

    &:hover:before,
    &:hover:after {
      opacity: 1;
      width: 100%;
    }
  }
}
</style>

<script setup lang="ts">
import { RouterLink, RouterView } from "vue-router";
</script>

<script lang="ts">
import anime from "animejs/lib/anime.es.js";

export default {
  mounted() {},
  methods: {},
};
</script>
