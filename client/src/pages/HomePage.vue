<template>
  <div class="container-fluid">
    <section class="row hero-img">
      <div class="col-12 d-flex justify-content-center">
        <div class="hero-txt">
          <p class="fs-1 fw-bold mb-0 text-center">A Console For Every Workflow
          <p class="fs-5 text-center">Discover the perfect console for yours.</p>
          </p>
        </div>
      </div>
    </section>
    <section v-if="products.length" class="row mt-3 justify-content-center">
      <div v-for="product in products" :key="product.id" class="col-12 col-md-5">
        <!-- NOTE I'm not sure if this is the best way to this. If I get a chance I'll ask Jerms.-->
        <div v-if="product.category == 'console'">
          <ProductCard :product="product" />
        </div>
      </div>
    </section>
    <section v-else class="row mt-3">
      <div class="col-12 col-md-4">
        <p>Loading Products...</p>
      </div>
    </section>
    <section class="row hero-img-2 mt-4">
      <div class="col-12">
        <div class="text-center mt-5">
          <p class="hero-txt-2">Create Your Own Console</p>
          <p class="color-txt-blue mb-0 fs-5">Add-on to make it perfect</p>
        </div>
      </div>
    </section>
    <section v-if="products.length" class="row mt-3 justify-content-center">
      <div v-for="product in products" :key="product.id" class="col-12 col-md-5">
        <div v-if="product.category == 'component'">
          <ProductCard :product="product" />
        </div>
      </div>
    </section>
    <section v-if="products.length" class="row mt-3 justify-content-around">
      <AddOnSeparator />
      <div v-for="product in products" :key="product.id" class="col-12 col-md-5 mt-1">
        <div v-if="product.category == 'pack'">
          <ProductCard :product="product" />
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import { computed, onMounted } from 'vue';
import Pop from '../utils/Pop';
import { productsService } from '../services/ProductsService'
import { AppState } from '../AppState';
import ProductCard from '../components/ProductCard.vue';
import AddOnSeparator from '../components/AddOnSeparator.vue';

export default {
  setup() {
    onMounted(() => {
      GetAllProducts();
    });
    async function GetAllProducts() {
      try {
        await productsService.GetAllProducts();
      }
      catch (error) {
        Pop.error(error);
      }
    }
    return {
      products: computed(() => AppState.products)
    };
  },
  components: { ProductCard, AddOnSeparator }
}
</script>

<style scoped lang="scss">
.hero-img {
  background-image: url(https://monogramcc.com/static/9a0b554db1990565457610c5f83b3ad7/a464d/shop_cta_xl_896f6b8270.jpg);
  height: 42.5rem;
  width: auto;
  background-position: center;
  background-size: cover;
}

.hero-img-2 {
  background-image: url(https://monogramcc.com/static/fb6b98aa90bbce383e12a09c50936e96/9ee2a/shop-banner-module.webp);
  height: 36rem;
  width: auto;
  background-position: center;
  background-size: cover;
}

.hero-txt {
  margin-top: 19rem;
  color: #ff8b68;
  background-color: rgba(0, 0, 0, 0.20);
  backdrop-filter: blur(7px);
  padding: 0.8rem 2rem 0.2rem 2rem;
  border-radius: 10px;
  width: 50rem;
  height: 8rem;
}

.hero-txt-2 {
  font-weight: bold;
  font-size: 3em;
  color: #1a2456;
}
</style>
