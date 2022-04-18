<script lang="ts">
import anime from "animejs/lib/anime.es.js";

const LOOP = {
  duration: 15000,
  factor: 2,
};

export default function animate() {
  function animeVehicle(
    vehicle: String,
    path_name: String,
    easing: any = "linear",
    duration: number = LOOP.duration,
    delay: number = 0,
    endDelay: number = 0
  ): void {
    if (duration + delay + endDelay != LOOP.duration) {
      // this.$log.info(
      //   "BackgroundMap will run out of sync!",
      //   vehicle,
      //   path_name,
      //   duration + delay + endDelay
      // );
    }
    var path: (a: string) => Number = anime.path(path_name);
    anime({
      targets: vehicle,
      translateX: path("x"),
      translateY: path("y"),
      rotate: path("angle"),
      easing: easing,
      duration: duration,
      delay: delay,
      endDelay: endDelay,
      loop: true,
    });
  }

  function animateMap(): void {
    anime({
      targets: ".background-map-line-drawing-map .background-map-lines path",
      strokeDashoffset: [anime.setDashoffset, 0],
      easing: "easeInSine",
      duration: 5000,
      delay: function (el, i) {
        return i * 100;
      },
    });
  }

  return { LOOP, animeVehicle, animateMap };
}
</script>
