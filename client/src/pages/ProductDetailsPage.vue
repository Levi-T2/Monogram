<template>
    <div class="container-fluid custom-margin">
        <section class="row justify-content-center">
            <div class="col-4">
                <img :src="product.imgUrl" alt="Product Image One" class="img-fluid">
            </div>
            <div class="col-4">
                <p class="name-style mb-0">{{ product.name }}</p>
                <p class="price-style">${{ product.price }}</p>
                <button class="btn btn-primary rounded-pill">Add to Bag</button>
            </div>
        </section>
    </div>
</template>


<script>
import { useRoute } from 'vue-router';
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
import Pop from '../utils/Pop';
import { productsService } from '../services/ProductsService';
export default {
    setup() {
        const route = useRoute();
        onMounted(() => {
            GetProductById();
        });
        async function GetProductById() {
            try {
                const productId = route.params.productId;
                await productsService.GetProductById(productId);
            } catch (error) {
                Pop.error(error);
            }
        }
        return {
            route,
            product: computed(() => AppState.activeProduct)
        }
    }
};
</script>


<style lang="scss" scoped>
.custom-margin {
    margin-top: 7.5rem;
}

.name-style {
    font-size: 2.25em;
    font-weight: bold
}

.price-style {
    font-size: 1.75em;
    font-weight: bold;
    color: #ff8b68;
}
</style>