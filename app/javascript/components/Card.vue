<template>
  <div :class="css_class" :id="id">
    <span>{{ word }}</span>
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
.card {
  align-items: center;
  cursor: pointer;
  display: flex;
  font-size: 1.1em;
  height: 100px;
  justify-content: center;
  text-align: center;
  width: 100%;
}
</style>
