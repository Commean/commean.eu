<template>
  <section>
    <h1>Quotes</h1>
    <Blockquote
      german_quote="Mit innovativen Algorithmen und entsprechender Sensorik kann Commean verschiedenste Fahrzeugkategorien erkennen, selbst LKW-Anhänger von dicht aneinander folgenden Fahrzeugen unterscheiden. Diese verlässliche Auswertung kann dazu dienen, die Verkehrsströme zielgerichtet zu lenken bzw. zu verbessern. Die vielseitige und anspruchsvolle Aufgabe wurde von nur zwei Schülern fächerübergreifend auf ansehnlichem Niveau gelöst."
    english_quote="With innovative algorithms and corresponding sensor technology, Commean can recognise a wide variety of vehicle categories, even distinguish truck trailers from vehicles following closely behind one another. This reliable evaluation can be used to direct or improve traffic flows in a targeted manner. The versatile and demanding task was solved by only two students at a respectable level across all subjects."
    >
      <template #author>Jury - Bosch Technik fürs Leben-Preis 2022</template>
    </Blockquote>
  </section>
</template>

<script setup lang="ts">
import Blockquote from "../../blockquote/Blockquote.vue";
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
