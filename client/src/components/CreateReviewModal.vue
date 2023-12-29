<template>
    <div class="modal fade" id="ReviewModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <p v-if="activeProduct" class="modal-title fs-4 mb-0 header-txt" id="exampleModalLabel">Review For {{
                        activeProduct.name }}</p>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form @submit.prevent="CreateReview()">
                        <section class="row mb-4">
                            <div class="col-12 col-md-6">
                                <label for="reviewUserName" class="form-label">Name</label>
                                <input v-model="editable.name" type="text" class="form-control" id="reviewUserName" required
                                    minlength=1 maxlength=100>
                            </div>
                            <div class="col-12 col-md-6">
                                <label for="reviewUserEmail" class="form-label">Email address</label>
                                <input v-model="editable.email" type="email" class="form-control" id="reviewUserEmail"
                                    aria-describedby="emailHelp" required minlength=3 maxlength=100>
                                <div id="emailHelp" class="form-text">Other users can see this email address</div>
                            </div>
                        </section>
                        <div class="mb-3">
                            <label for="reviewTitle" class="form-label">Title</label>
                            <input v-model="editable.title" type="text" class="form-control" id="reviewTitle" required
                                minlength=1 maxlength=100>
                        </div>
                        <div class="mb-3">
                            <label for="reviewBody" class="form-label">Description</label>
                            <textarea v-model="editable.body" required minlength=1 maxlength=5000 type="text"
                                class="form-control" id="reviewBody"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="reviewImg" class="form-label">Image Url</label>
                            <input v-model="editable.imgUrl" maxlength=1000 type="text" class="form-control" id="reviewImg"
                                aria-describedby="imageHelp">
                            <div id="imageHelp" class="form-text">This must by a Url</div>
                        </div>
                        <div class="text-end">
                            <button type="submit" class="btn btn-submit rounded-pill">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted, ref } from 'vue';
import Pop from '../utils/Pop';
import { useRoute } from 'vue-router';
import { reviewsService } from '../services/ReviewsService'
import { logger } from '../utils/Logger';
import { Modal } from 'bootstrap';
export default {
    setup() {
        const editable = ref({});
        const route = useRoute();
        return {
            editable,
            route,
            activeProduct: computed(() => AppState.activeProduct),
            async CreateReview() {
                try {
                    const reviewData = editable.value;
                    reviewData.productId = route.params.productId;
                    await reviewsService.CreateReview(reviewData);
                    Modal.getOrCreateInstance("#ReviewModal").hide();
                    editable.value = {};
                } catch (error) {
                    Pop.error(error);
                }
            }
        }
    }
};
</script>


<style lang="scss" scoped>
.btn-submit {
    background-color: #1a2456;
    color: white;
    font-weight: bold;
    transition: ease-in-out .25s;
    font-size: 1.25em;
}

.btn-submit:hover {
    background-color: #ff8b68;

}

.header-txt {
    color: #1a2456;
    font-weight: bold;
}

input {
    border-radius: 0%;
}

textarea {
    border-radius: 0%;
}

.modal-header {
    border-bottom: 2px solid #1a2456;
}

// This is being used to set a custom size for the modal instead of using bootstraps built in ones.
.modal {
    --bs-modal-width: 775px;
    --bs-modal-border-radius: 0%;
}
</style>
