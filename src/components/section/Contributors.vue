<template>
  <section>
    <h1>Contributors</h1>
    <p>❤️ to all the contributors!</p>
    <div class="team-flex">
      <FloatingCardTeamMember>
        <template #heading>Simon Reichmann</template>
        <template #icon
          ><img
            src="https://gitlab.com/commean/other/big-files/images-01/-/raw/main/contributors/simon_reichmann.jpg"
        /></template>
        <template #contact>
          <a href="mailto:simon@reichmann.or.at"
            ><img src="/src/assets/icons/email.svg"
          /></a>
        </template>

        <ul>
          <li>Case for Nodes</li>
        </ul>
      </FloatingCardTeamMember>
    </div>
  </section>
</template>

<script setup lang="ts">
import FloatingCardTeamMember from "./../cards/FloatingCardTeamMember.vue";
</script>

<script lang="ts">
export default {};
</script>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";

h1,
p {
  text-align: center;
}
.team-flex {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin: 20px;
}
</style>
