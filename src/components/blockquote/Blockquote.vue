<template>
  <blockquote class="otro-blockquote">
    {{ quote.text }}
    <span class="quote-author"><slot name="author"></slot></span>
    <div class="language-switcher">
      <a @click="switchToGerman">GER</a>/<a @click="switchToEnglish">ENG</a>
    </div>
  </blockquote>
</template>

<script lang="ts">
import { defineComponent, reactive } from "vue";

export default defineComponent({
  props: {
    german_quote: { type: String, required: true },
    english_quote: { type: String, required: true },
  },
  data(props) {
    return {
      german_quote: props.german_quote,
      english_quote: props.english_quote,
    };
  },
  setup(props) {
    const quote = reactive({ text: props.english_quote });

    return {
      quote,
    };
  },
  methods: {
    switchToGerman() {
      this.quote.text = this.german_quote;
    },
    switchToEnglish() {
      this.quote.text = this.english_quote;
    },
  },
});
</script>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";

.otro-blockquote {
  font-size: 1.4em;
  max-width: 1300px;
  margin: 50px auto;
  font-style: italic;
  padding: 1.2em 30px 1.2em 75px;
  border-left: 8px solid var(--color-blockquote);
  line-height: 1.6;
  position: relative;
  background-color: var(--color-background-soft);

  &::before {
    font-family: Arial;
    content: "\201C";
    color: var(--color-blockquote);
    font-size: 4em;
    position: absolute;
    left: 10px;
    top: -10px;
  }

  .quote-author {
    display: block;
    color: var(--color-text-emph);
    font-style: normal;
    font-weight: bold;
    margin-top: 1em;
  }
}

.language-switcher {
  writing-mode: vertical-rl;
  position: absolute;
  background: none;
  left: 10px;
  bottom: 18px;
  border: none;
  margin: 4px 2px;

  a {
    color: var(--color-blockquote);
    &:before,
    &:after {
      position: absolute;
      opacity: 0;
      width: 2px;
      height: 0;
      content: "";
      background: var(--color-blockquote);
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
      height: 100%;
    }
  }
}
</style>
