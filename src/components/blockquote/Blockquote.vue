<template>
  <blockquote class="otro-blockquote">
    Mit innovativen Algorithmen und entsprechender Sensorik kann Commean
    verschiedenste Fahrzeugkategorien erkennen, selbst LKW-Anhänger von dicht
    aneinander folgenden Fahrzeugen unterscheiden. Diese verlässliche Auswertung
    kann dazu dienen, die Verkehrsströme zielgerichtet zu lenken bzw. zu
    verbessern. Die vielseitige und anspruchsvolle Aufgabe wurde von nur zwei
    Schülern fächerübergreifend auf ansehnlichem Niveau gelöst
    <span>Jury - Bosch Technik fürs Leben-Preis 2022</span>
  </blockquote>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped>
@import "/src/scss/_variables.scss";

.otro-blockquote {
  font-size: 1.4em;
  width: 60%;
  margin: 50px auto;
  font-style: italic;
  padding: 1.2em 30px 1.2em 75px;
  border-left: 8px solid var(--color-blockquote);
  line-height: 1.6;
  position: relative;
  background-color: var(--color-background-soft);
}

.otro-blockquote::before {
  font-family: Arial;
  content: "\201C";
  color: var(--color-blockquote);
  font-size: 4em;
  position: absolute;
  left: 10px;
  top: -10px;
}

.otro-blockquote span {
  display: block;
  color: var(--color-text-emph);
  font-style: normal;
  font-weight: bold;
  margin-top: 1em;
}
</style>
