<template>
  <div id="app" style="border: 3px double green;">
    <div v-for="row in game_size" v-bind:key="row" class="column">
      <div v-for="col in game_size" v-bind:key="col" class="">
        <Card v-bind:color="cardColor(row, col)" v-bind:id="cardId(row, col)" word="Foo" />
      </div>
    </div>
  </div>
</template>

<script>
import Card from "./Card"

export default {
  components: {
    Card
  },
  data: function () {
    return {
      game_size: 5
    }
  },
  methods: {
    cardColor(row, column) {
      const seed = row * 2 + column;
      return seed % 2 == 0 ? "blue" : "red";
    },
    cardId(row, column) {
      return `card_${row}_${column}`
    }
  }
}
</script>

<style lang="scss">
@import "packs/stylesheets/application.scss";

p {
  font-size: 2em;
  text-align: center;
}
</style>
