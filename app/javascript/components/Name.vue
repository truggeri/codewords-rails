<template>
  <div class="columns is-centered"> 
    <div class="column is-two-fifths">
      <input :class="inputClass" type="text" v-model.lazy.trim="name" placeholder="Your Name">
    </div>
    <div class="column is-one-fifth">
      <div class="field has-addons">
        <p class="control" v-on:click="color = 'blue'">
          <a class="button is-rounded blue" href="#" :disabled="color == 'blue'">
            &nbsp;&nbsp;&nbsp;
          </a>
        </p>
        <p class="control" v-on:click="color = 'red'">
          <a class="button is-rounded red" href="#" :disabled="color == 'red'">
            &nbsp;&nbsp;&nbsp;
          </a>
        </p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Name",
  props: {
    initColor: String,
    initName: String
  },
  data() {
    return {
      color: this.initColor,
      name: this.initName
    }
  },
  methods: {},
  computed: {
    inputClass: function () {
      let color_class = "";
      if (this.color == 'blue') {
        color_class = " has-text-info";
      } else if (this.color == 'red') {
        color_class = " has-text-danger";
      }
      return "input" + color_class;
    }
  }
}
</script>

<style scoped lang="scss">

</style>
