<template>
    <div class="offcanvas offcanvas-start" tabindex="-1" id="Checkout" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">Bag</h5>
            <button title="Close" type="button" class="btn" data-bs-dismiss="offcanvas" aria-label="Close"><i
                    class="mdi mdi-close-circle"></i></button>
        </div>
        <div class="offcanvas-body">
            <div class="container-fluid">
                <section v-if="products.length" class="row">
                    <div v-for="product in products" :key="product.id" class="col-12 my-2">
                        <div class="d-flex">
                            <img :src="product.imgUrl" alt="Product Image" class="img-size">
                            <div class="text-center px-4 pt-3">
                                <p>{{ product.name }}</p>
                                <p>${{ product.price }}</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section v-else class="row">
                    <div class="col-12">
                        <p>Nothing in your bag!</p>
                    </div>
                </section>
            </div>
        </div>
        <div class="offcanvas-footer">
            <p class="mb-4 subtotal-style">Subtotal {{ productPrice }}</p>
            <div class="text-center">
                <button class="btn btn-warning btn-checkout rounded-pill">Checkout</button>
            </div>
        </div>
    </div>
</template>


<script>
import { computed } from 'vue';
import { AppState } from '../AppState';

export default {
    setup() {
        return {
            products: computed(() => AppState.bag),
        }
    }
};
</script>


<style lang="scss" scoped>
.img-size {
    height: 6rem;
    width: 6rem;
    object-position: center;
    object-fit: cover;
    border-radius: 3px;
}

.btn {
    color: white;
    font-size: 1.75em;
}

.subtotal-style {
    font-size: 2em;
    font-weight: bold;
}

.btn-checkout {
    font-size: 1em;
}

// CSS bellow effects the built-in styling of our off-canvas

.offcanvas-header {
    color: white;
    background-color: #1a2456;
    padding: 0.1rem 1rem 0.1rem 1rem;
    border-bottom: 3.5px solid #ff8b68;
}

.offcanvas-footer {
    color: white;
    background-color: #1a2456;
    padding: 1rem 1rem 0.8rem 1rem;
    border-top: 3.5px solid #ff8b68;
}

.offcanvas-title {
    font-size: 1.75em;
}
</style>