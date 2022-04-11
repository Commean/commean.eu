<template>
  <section class="card">
    <h2>
      <slot name="heading"></slot>
    </h2>
    <div><slot name="icon"></slot></div>
    <div class="details">
      <slot></slot>
    </div>
  </section>
</template>

<style lang="scss" scoped>
.card {
  display: inline-grid;
  background-color: white;
  padding: 10px;
  box-shadow: 0 5px 10px 0 black;
  border-radius: 25px;
}
</style>
