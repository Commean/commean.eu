<template>
  <section>
    <h1>Trailer</h1>
    <div class="video">
      <iframe
        title="Commean - Trailer"
        src="https://tube.tchncs.de/videos/embed/b35228ac-aa5a-4386-b820-030fa2bfa8be"
        allowfullscreen=""
        sandbox="allow-same-origin allow-scripts allow-popups"
        width="800"
        height="450"
        frameborder=""
      ></iframe>
    </div>
  </section>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";

section {
  max-width: $max-width;
  padding: 50px 20px;
  margin: 0 auto;

  h1 {
    text-align: center;
  }

  .video {
    display: flex;
    align-items: center;
    justify-content: center;

    iframe {
      border-radius: 25px;
      overflow: hidden;
      box-shadow: 0 2px 4px 0 black;
    }
  }
}
</style>
