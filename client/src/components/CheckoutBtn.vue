<template>
    <div v-if="product">
        <button @click="AddToBag(product)" class="btn btn-primary rounded-pill">Add to Bag</button>
    </div>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
import Pop from '../utils/Pop';
import { checkoutService } from '../services/CheckoutService';
import { Product } from '../models/Product';
export default {
    props: {
        product: { type: Product, required: true }
    },
    setup() {
        return {
            AddToBag(product) {
                try {
                    checkoutService.AddToBag(product)
                    // TODO fix location and style this alert
                    // Pop.toast(`${product.name} added to bag!`)
                } catch (error) {
                    Pop.error(error);
                }
            }
        }
    }
};
</script>


<style lang="scss" scoped></style>