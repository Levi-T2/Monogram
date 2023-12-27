<template>
    <div v-if="product" class="col-12">
        <img :src="product.imgUrl" alt="Product Image" class="img-size">
        <div class="d-flex justify-content-between">
            <p>{{ product.name }}</p>
            <p>$ {{ product.price }}</p>
        </div>
        <p class="mb-0">{{ product.description }}</p>
    </div>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
import { Product } from '../models/Product';
export default {
    props: {
        product: { type: Product, required: true }
    },
    setup() {
        return {}
    }
};
</script>


<style lang="scss" scoped>
.img-size {
    height: 25.5rem;
    width: auto;
    object-fit: cover;
    object-position: center
}
</style>