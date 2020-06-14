/* eslint no-console: 0 */
import Vue from 'vue'
import App from '../components/App.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(App)
  }).$mount()
  document.getElementById("app").appendChild(app.$el)

  console.log(app)
})
