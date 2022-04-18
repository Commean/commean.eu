<template>
  <button @click="returnToTop" id="rrt" ref="rrt" class="hidden">
    <svg
      xmlns="http://www.w3.org/2000/svg"
      height="24px"
      viewBox="0 0 24 24"
      width="24px"
      fill="#000000"
    >
      <path d="M0 0h24v24H0z" fill="none" />
      <path d="M7.41 15.41L12 10.83l4.59 4.58L18 14l-6-6-6 6z" />
    </svg>
  </button>
</template>

<style lang="scss">
@import "/src/scss/_variables.scss";

.hidden {
  display: none;
}

#rrt {
  position: fixed;
  right: 2rem;
  bottom: 2rem;

  width: 40px;
  height: 40px;
  background-color: var(--color-button);
  border-radius: 100%;
  border-style: solid;
  border-color: var(--color-button-border);
}
</style>

<script setup lang="ts">
import { ref, onMounted } from "vue";

// declare a ref to hold the element reference
// the name must match template ref value
const rrt = ref<HTMLButtonElement | null>(null);

onMounted(() => {
  const scrollContainer = () => {
    return document.documentElement || document.body;
  };

  document.addEventListener("scroll", () => {
    if (scrollContainer().scrollTop > showOnPx) {
      rrt.value?.classList.remove("hidden");
    } else {
      rrt.value?.classList.add("hidden");
    }
  });
});
</script>

<script lang="ts">
const showOnPx = 64;
export default {
  methods: {
    returnToTop() {
      document.body.scrollIntoView({
        behavior: "smooth",
      });
    },
  },
};
</script>
