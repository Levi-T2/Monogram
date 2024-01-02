<template>
    <div class="offcanvas offcanvas-start" tabindex="-1" id="Checkout" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasExampleLabel">Bag
                <span class="counter">
                    {{ products.length }}
                </span>
            </h5>
            <button title="Close" type="button" class="btn" data-bs-dismiss="offcanvas" aria-label="Close"><i
                    class="mdi mdi-close-circle"></i></button>
        </div>
        <div class="offcanvas-body">
            <div class="container-fluid">
                <section v-if="products.length" class="row">
                    <div v-for="product in products" :key="product.id" class="col-12 my-2 product-card">
                        <div class="d-flex justify-content-between">
                            <img :src="product.imgUrl" alt="Product Image" class="img-size">
                            <div class="text-center px-4 pt-3">
                                <p class="txt">{{ product.name }}</p>
                                <p class="txt">${{ product.price }}</p>
                            </div>
                            <button @click="RemoveFromBag(product.id)" title="Remove" class="btn btn-remove"><i
                                    class="mdi mdi-delete-circle"></i></button>
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
            <p class="mb-4 subtotal-style">Subtotal ${{ subtotal }}</p>
            <div class="text-center">
                <button class="btn btn-warning btn-checkout rounded-pill">Checkout</button>
            </div>
        </div>
    </div>
</template>


<script>
import { computed, ref, watch, } from 'vue';
import { AppState } from '../AppState';
import Pop from '../utils/Pop';
import { checkoutService } from '../services/CheckoutService';

export default {
    setup() {
        // SECTION this code handles our subtotal display and works perfectly ( i am proud of this )
        const subtotal = ref(0);
        watch(() => AppState.bag.length, () => {
            let productArray = AppState.bag;
            let priceOfAll = 0;
            productArray.forEach((product) => priceOfAll += product.price);
            subtotal.value += priceOfAll;
            console.log(subtotal.value);
        });
        // !SECTION
        return {
            products: computed(() => AppState.bag),
            subtotal,
            async RemoveFromBag(productId) {
                try {
                    const confirm = await Pop.confirm(`Are you sure you want to remove this from your bag?`);
                    if (!confirm) {
                        return;
                    } else {
                        checkoutService.RemoveFromBag(productId);
                    }
                } catch (error) {
                    Pop.error(error);
                }
            }
        }
    }
};
</script>


<style lang="scss" scoped>
.product-card {
    background-color: rgb(230, 230, 230);
    border-radius: 3px;
    padding: 0rem;
}

.btn-remove {
    background-color: red;
    height: 3.5rem;
    width: 3.5rem;
    border-bottom-left-radius: 22px;
}

.img-size {
    height: 6rem;
    width: 6.4rem;
    object-position: center;
    object-fit: cover;
    border-top-left-radius: 3px;
    border-bottom-left-radius: 3px;
}

.txt {
    font-weight: bold;
    color: #1a2456;
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

.counter {
    color: #1a2456;
    background-color: white;
    padding: 0.3rem 0.7rem 0.3rem 0.7rem;
    border-radius: 25px;
    font-size: 0.7em;
    margin-left: 0.35rem;
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