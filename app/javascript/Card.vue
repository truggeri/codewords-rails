<template>
  <div :class="css_class" :id="id">
    <p>{{ word }}</p>
  </div>
</template>

<script>
export default {
  name: "Card",
  props: {
    color: String,
    id: String,
    word: String,
  },
  data() {
    return {
      css_class: `card ${this.color}`,
      card_id: `card_${this.row}_${this.column}`
    }
  }
}
</script>

<style scoped lang="scss">
p {
  font-size: 2em;
  text-align: center;
}

.card {
  width: 100px;
  height: 100px;
  padding: 20px;
}

.blue {
  background-color: rgb(65, 131, 204);
  color: white;
}

.red {
  background-color: rgb(209, 48, 48);
  color: white;
}
</style>
