<template>
    <section class="row justify-content-center py-4 bg-color">
        <div class="col-12 col-md-6 text-center">
            <img :src="product.imgUrl" alt="Product Image" class="img-size">
        </div>
        <div class="col-12 col-md-5">
            <p class="mb-0 name-txt">{{ product.name }}</p>
            <p class="mb-0 price-txt">${{ product.price }}</p>
            <!-- Brings in button to add to bag -->
            <CheckoutBtn :product="product" class="py-3" />
            <RouterLink class="border-style" :to="{ name: 'Details', params: { productId: product.id } }">
                <p class="border-style p-2 mb-0 workflow-txt">View Full Product Details</p>
            </RouterLink>
        </div>
    </section>
</template>

<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
import { Product } from '../models/Product';
import CheckoutBtn from './CheckoutBtn.vue';
import { RouterLink } from 'vue-router';
export default {
    props: {
        product: { type: Product, required: true }
    },
    setup() {
        return {};
    },
    components: { CheckoutBtn, RouterLink }
};
</script>

<style lang="scss" scoped>
.img-size {
    height: 20rem;
    width: auto;
    object-fit: cover;
    object-position: center;
}

.name-txt {
    color: #1a2456;
    font-weight: bold;
    font-size: 3em;
}

.price-txt {
    font-size: 1.5em;
    font-weight: bold;
    color: #ff8b68;
}

.workflow-txt {
    color: #1a2456;
    font-weight: bold;
}

.border-style {
    border-top: 2px solid #080b1b;
}

.bg-color {
    background-color: rgb(226, 226, 226);
}
</style>