<template>
    <div v-if="product" class="col-12 p-2">
        <router-link @mouseover="active = true" v-if="!active" class="text-dark"
            :to="{ name: 'Details', params: { productId: product.id } }">
            <img :src="product.imgUrl" alt="Product Image" class="img-size">
            <div class="d-flex justify-content-between align-items-baseline pt-2">
                <p class="name-style mb-0">{{ product.name }}</p>
                <p class="price-style mb-0">$ {{ product.price }}</p>
            </div>
            <div class="mt-2">
                <p class="mb-0">{{ product.description }}</p>
            </div>
        </router-link>
        <router-link @mouseleave="active = false" v-else class="text-dark"
            :to="{ name: 'Details', params: { productId: product.id } }">
            <img :src="product.imgUrl2" alt="Product Image" class="img-size">
            <div class="d-flex justify-content-between align-items-baseline  pt-2">
                <p class="name-style mb-0">{{ product.name }}</p>
                <p class="btn-shop mb-0">Shop Now</p>
            </div>
            <div class="mt-2">
                <p class="mb-0">{{ product.description }}</p>
            </div>
        </router-link>
    </div>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted, ref } from 'vue';
import { Product } from '../models/Product';
export default {
    props: {
        product: { type: Product, required: true }
    },
    setup() {
        const active = ref(false);
        return {
            active,
        }
    }
};
</script>


<style lang="scss" scoped>
.img-size {
    height: 25.5rem;
    width: auto;
    object-fit: cover;
    object-position: center;
    border-radius: 2px;
}

.name-style {
    font-size: 1.45em;
    font-weight: bold
}

.btn-shop {
    background-color: blue;
    color: white;
    padding: 0.25rem 0.65rem 0.25rem 0.65rem;
    border-radius: 20px;
}

.price-style {
    padding: 0.25rem;
}
</style>