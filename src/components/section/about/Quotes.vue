<template>
  <section>
    <h1>Quotes</h1>
    <Blockquote
      german_quote="Mit innovativen Algorithmen und entsprechender Sensorik kann Commean verschiedenste Fahrzeugkategorien erkennen, selbst LKW-Anhänger von dicht aneinander folgenden Fahrzeugen unterscheiden. Diese verlässliche Auswertung kann dazu dienen, die Verkehrsströme zielgerichtet zu lenken bzw. zu verbessern. Die vielseitige und anspruchsvolle Aufgabe wurde von nur zwei Schülern fächerübergreifend auf ansehnlichem Niveau gelöst."
    english_quote="TODO"
    >
      <template #author>Jury - Bosch Technik fürs Leben-Preis 2022</template>
    </Blockquote>
  </section>
</template>

<script setup lang="ts">
import Blockquote from "/src/components/blockquote/Blockquote.vue";
</script>

<script lang="ts">
export default {};
</script>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";
@import "scss/base.scss";

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
