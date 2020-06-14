<template>
  <div id="app">
    <GameBoard />
  </div>
</template>

<script>
import GameBoard from "./GameBoard"

export default {
  components: {
    GameBoard
  },
  data: function () {
    return {}
  }
}
</script>

<style lang="scss">
@import "packs/stylesheets/application.scss";
</style>
