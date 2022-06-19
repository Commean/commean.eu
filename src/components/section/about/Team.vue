<template>
  <section>
    <h1>Team</h1>
    <div class="team-flex">
      <FloatingCardTeamMember>
        <template #heading>Stefan Pisjak</template>
        <template #icon
          ><img
            src="https://gitlab.com/commean/other/big-files/images-01/-/raw/main/team/stefan_pisjak.jpg"
        /></template>
        <template #contact>
          <a href="https://gitlab.com/2tefan"
            ><img src="/src/assets/icons/gitlab.svg"
          /></a>
          <a href="https://github.com/2tefan"
            ><img src="/src/assets/icons/github.svg"
          /></a>
          <a href="mailto:stefan.pisjak@tuta.io"
            ><img src="/src/assets/icons/email.svg"
          /></a>
        </template>

        <ul>
          <li>Recognition, Classification &amp; Tracking of vehicles</li>
          <li>commean.eu</li>
          <li>Communication via LoRa</li>
        </ul>
      </FloatingCardTeamMember>

      <FloatingCardTeamMember>
        <template #heading>Luca Nachbar</template>
        <template #icon
          ><img src="https://avatars.githubusercontent.com/u/37478004?v=4"
        /></template>
        <template #contact>
          <a href="https://gitlab.com/lumi200"
            ><img src="/src/assets/icons/gitlab.svg"
          /></a>
          <a href="https://github.com/lumi200"
            ><img src="/src/assets/icons/github.svg"
          /></a>
          <a href="mailto:luca.nachbar@tuta.io"
            ><img src="/src/assets/icons/email.svg"
          /></a>
        </template>

        <ul>
          <li>Backend</li>
          <li>Frontend</li>
        </ul>
      </FloatingCardTeamMember>

      <FloatingCardTeamMember>
        <template #heading>Hanno Kügler</template>
        <template #icon
          ><img src="src/assets/icons/unknown.svg"
        /></template>
        <template #contact>
          <a href="mailto:hanno.kuegler@gmail.com"
            ><img src="/src/assets/icons/email.svg"
          /></a>
        </template>

        <ul>
          <li>Financial/Business Management</li>
        </ul>
      </FloatingCardTeamMember>
    </div>
  </section>
</template>

<script setup lang="ts">
import FloatingCardTeamMember from "../../cards/FloatingCardTeamMember.vue";
</script>

<script lang="ts">
export default {};
</script>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";
@import "scss/base.scss";

.team-flex {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin: 20px;
}
</style>
