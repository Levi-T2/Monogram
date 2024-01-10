<template>
  <header class="sticky-top d-flex justify-content-center">
    <Navmenu />
  </header>
  <main>
    <router-view />
  </main>
  <footer v-if="route.name == 'Support'">

  </footer>
  <footer v-else>
    <Footer />
  </footer>

  <!-- MODALS -->
  <CreateReviewModal />
  <CheckoutOffCanvas />
</template>

<script>
import { computed } from 'vue'
import { AppState } from './AppState'
import Navbar from './components/Navbar.vue'
import Navmenu from './components/Navmenu.vue'
import CreateReviewModal from './components/CreateReviewModal.vue'
import CheckoutOffCanvas from './components/CheckoutOffCanvas.vue'
import Footer from './components/Footer.vue'
import { useRoute } from 'vue-router'

export default {
  setup() {
    const route = useRoute();
    return {
      appState: computed(() => AppState),
      route
    }
  },
  components: { Navbar, Navmenu, CreateReviewModal, CheckoutOffCanvas, Footer }
}
</script>
<style lang="scss">
@import "./assets/scss/main.scss";

.color-bg {
  background-color: #1a2456;
}

.color-txt {
  color: #ff8b68;
}

.color-txt-blue {
  color: #1a2456;
}

.monogram-txt {
  font-family: 'Audiowide', sans-serif;
}
</style>
