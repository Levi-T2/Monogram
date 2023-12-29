<template>
    <div class="container-fluid custom-margin">
        <section v-if="product" class="row justify-content-center">
            <div class="col-12 col-md-5">
                <img :src="product.imgUrl" alt="Product Image One" class="img-fluid">
                <section class="row mt-2">
                    <div v-if="product.imgUrl2" class="col-6">
                        <img :src="product.imgUrl2" alt="Product Image One" class="img-fluid">
                    </div>
                    <div v-if="product.imgUrl3" class="col-6">
                        <img :src="product.imgUrl3" alt="Product Image One" class="img-fluid">
                    </div>
                </section>
            </div>
            <div class="col-12 col-md-5">
                <p class="name-style mb-0">{{ product.name }}</p>
                <p class="price-style">${{ product.price }}</p>
                <button class="btn btn-primary rounded-pill">Add to Bag</button>
                <!-- Comp for all accordions on page -->
                <DetailsAccordion :product="product" />
            </div>
            <div class="col-12 col-md-10 mt-4">
                <!-- Brings in styling and text for the creator app -->
                <CreatorAppDetails />
            </div>
            <div class="col-12 col-md-10 mt-4">
                <WorkflowInfo />
            </div>
            <div class="col-12 col-md-10 mt-4">
                <ReviewSection />
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
import DetailsAccordion from '../components/DetailsAccordion.vue';
import CreatorAppDetails from '../components/CreatorAppDetails.vue';
import WorkflowInfo from '../components/WorkflowInfo.vue';
import ReviewSection from '../components/ReviewSection.vue';
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
            }
            catch (error) {
                Pop.error(error);
            }
        }
        return {
            route,
            product: computed(() => AppState.activeProduct)
        };
    },
    components: { DetailsAccordion, CreatorAppDetails, WorkflowInfo, ReviewSection }
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