<template>
    <section v-if="reviews" class="row">
        <div class="col-12">
            <div class="header-bor d-flex align-items-center justify-content-between">
                <p class="header-style mb-0">Reviews
                    <span class="review-counter">
                        {{ reviews.length }}
                    </span>
                </p>
                <button data-bs-toggle="modal" data-bs-target="#ReviewModal" class="btn btn-primary rounded-pill">Write A
                    Review</button>
            </div>
        </div>
        <div v-for="review in reviews" :key="review.id" class="col-12 px-4 mt-2">
            <p class="mb-0 fs-3">{{ review.name }}
                <span class="fs-6">
                    {{ review.email }}
                </span>
            </p>
            <div class="px-5 mt-1">
                <p class="fs-4 mb-0">{{ review.title }}</p>
                <p class="fs-5 px-2">{{ review.body }}</p>
            </div>
        </div>
    </section>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
import Pop from '../utils/Pop';
import { useRoute } from 'vue-router';
import { reviewsService } from '../services/ReviewsService'
export default {
    setup() {
        const route = useRoute();
        onMounted(() => {
            GetReviewsForProduct();
        });
        async function GetReviewsForProduct() {
            try {
                // I am inputting the product Id this way as it doesn't create an unnecessary variable.
                await reviewsService.GetReviewsForProduct(route.params.productId)
            } catch (error) {
                Pop.error(error);
            }
        }
        return {
            route,
            reviews: computed(() => AppState.reviews),
        }
    }
};
</script>


<style lang="scss" scoped>
.header-bor {
    border-bottom: 2.5px solid #1a2456;
}

.header-style {
    color: #1a2456;
    font-size: 2.6em;
    font-weight: bold;
}

.review-counter {
    color: #1a2456;
    background-color: #ff8b68;
    font-size: 0.55em;
    padding: 0.2rem 0.75rem 0.2rem 0.75rem;
    border-radius: 25px;
}
</style>