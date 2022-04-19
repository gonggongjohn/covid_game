import { boot } from 'quasar/wrappers'
import VueParticles from 'vue-particles'

// "async" is optional;
// more info on params: https://v2.quasar.dev/quasar-cli/boot-files
export default boot(({ app }) => {
  app.use(VueParticles)
})
