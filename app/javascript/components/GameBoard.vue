<template>
  <div class="container">
    <div>
      <Name />
    </div>
    <br />
    <div v-for="row in game_size" v-bind:key="row" class="columns">
      <div v-for="col in game_size" v-bind:key="col" class="column is-one-fifth is-vcentered">
        <Card v-bind:color="cardColor(row, col)" v-bind:id="cardId(row, col)" word="Foo" />
      </div>
    </div>
  </div>
</template>

<script>
import Card from "./Card"
import Name from "./Name"

export default {
  name: "GameBoard",
  components: {
    Card,
    Name
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

<style scoped lang="scss">
</style>
