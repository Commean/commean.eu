<template>
  <hr />
  <footer class="icon-auto-theme icon-with-link">
    <p>©️ Commean 2022</p>
    <a href="https://gitlab.com/commean"
      ><img src="/src/assets/icons/gitlab.svg"
    /></a>
    <a href="https://github.com/commean"
      ><img src="/src/assets/icons/github.svg"
    /></a>
    <a href="mailto:contact@commean.eu"
      ><img src="/src/assets/icons/email.svg"
    /></a>
  </footer>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
hr {
  color: var(--color-background-soft);
}

footer {
  padding: 20px 0;

  text-align: center;

  p {
    margin: 0;
  }
}
</style>
