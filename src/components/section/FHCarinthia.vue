<template>
  <section>
    <div class="text-bottom">
      <h2>FH Kärnten/Carinthia</h2>
    </div>
    <img
      src="https://gitlab.com/commean/other/big-files/images-01/-/raw/main/fh_carinthia/cropped.jpg"
    />
    <div class="text">
      <p>Commean won the 1st price at the FH Carinthia in the category »IT«.</p>
      <ul>
        <li>
          <a
            href="https://www.fh-kaernten.at/news/detail/fh-kaernten-kuerte-oesterreichweit-die-besten-diplom-und-vorwissenschaftlichen-arbeiten"
            >FH Carinthia newsletter entry</a
          >
        </li>
        <li>
          <a
            href="https://photos.google.com/share/AF1QipPaSBZCopoTRs_CM0UlFnogn9rfAlAKcnP-M7HXNPM1I9A1NY9jcAoXh4xVZksnzA?key=WnFHRFl0d2JWSjFLVE1lSlVWTHBqeUIyWk90S3lR"
            >Image Source (Google Photos)</a
          >
        </li>
      </ul>
    </div>
  </section>
</template>

<script>
export default {};
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
