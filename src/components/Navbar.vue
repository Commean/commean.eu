<template>
  <header>
    <nav class="navbar">
      <ul>
        <li><RouterLink to="/">HOME</RouterLink></li>
        <li><RouterLink to="/about">ABOUT</RouterLink></li>
      </ul>
    </nav>
  </header>
</template>

<style lang="scss">
@import "/src/scss/_variables.scss";

nav {
  padding: 20px 0;
  background-color: var(--color-background-soft);
  box-shadow: 0 2px 4px 0 black;
  background: rgb(246, 174, 45);
  background: linear-gradient(
    45deg,
    var(--color-gradient-1) 0%,
    var(--color-gradient-2) 35%,
    var(--color-gradient-3) 100%
  );
  color: var(--color-text-inverse);

  ul {
    display: block;
    margin: 0;
    padding: 0;
    text-align: center;
    li {
      display: inline-block;

      a {
        margin: 0 25px;
        text-decoration: none;
        font-weight: bold;
        color: var(--color-text-inverse);

        &:before,
        &:after {
          position: absolute;
          opacity: 0;
          width: 0%;
          height: 2px;
          content: "";
          background: white;
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
  }
}
</style>

<script setup lang="ts">
import { RouterLink, RouterView } from "vue-router";
</script>

<script lang="ts">
import anime from "animejs/lib/anime.es.js";

export default {
  mounted() {
    anime({
      targets: ".navbar",
      easing: "easeOutExpo",
      duration: 750,
      translateY: [-250, 0],
    });
    
  },
  methods: {},
};
</script>
