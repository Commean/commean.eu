<template>
  <button @click="returnToTop" id="rtt" ref="rtt" class="hidden">
    <svg
      width="36"
      height="36"
      fill="#FFFFFF"
      version="1.1"
      viewBox="0 0 36 36"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path d="m5.756-0.7407h24v24h-24z" fill="none" />
      <path
        d="m4.173 28.69 13.58-13.55 13.58 13.55 4.173-4.173-17.76-17.76-17.76 17.76z"
        stroke-width="2.959"
      />
    </svg>
  </button>
</template>

<style lang="scss">
@import "/src/scss/_variables.scss";

.hidden {
  //display: none;
}

#rtt {
  position: fixed;
  right: 2rem;
  bottom: 2rem;

  width: 64px;
  height: 64px;
  background-color: var(--color-button);
  border-radius: 100%;
  border-style: solid;
  border-color: var(--color-button-border);
}
</style>

<script setup lang="ts">
import { ref, onMounted } from "vue";
import anime from "animejs/lib/anime.es.js";

let OFFSET = 100;

// declare a ref to hold the element reference
// the name must match template ref value
const rtt = ref<HTMLButtonElement | null>(null);

onMounted(() => {
  const scrollContainer = () => {
    return document.documentElement || document.body;
  };

  function onScroll() {
    if (scrollContainer().scrollTop > showOnPx) {
      if (rtt.value?.classList.contains("hidden")) {
        rtt.value?.classList.remove("hidden");
        anime({
          targets: "#rtt",
          translateX: [OFFSET, 0],
          rotate: [360, 0],
          easing: "easeInSine",
          duration: 500,
        });
      }
    } else {
      if (!rtt.value?.classList.contains("hidden")) {
        rtt.value?.classList.add("hidden");
        anime({
          targets: "#rtt",
          translateX: [0, OFFSET],
          rotate: [0, 360],
          easing: "easeInSine",
          duration: 500,
        });
      }
    }
  }

  document.addEventListener("scroll", onScroll);
});
</script>

<script lang="ts">
const showOnPx = 64;
export default {
  mounted() {
    anime({
      targets: "#rtt",
      translateX: 1000,
      easing: "easeInSine",
      duration: 0,
    });
  },
  methods: {
    returnToTop() {
      document.body.scrollIntoView({
        behavior: "smooth",
      });
    },
  },
};
</script>
