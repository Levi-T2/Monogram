<template>
    <div v-if="product">
        <form @submit.prevent="AddToBag(product)">
            <input class="input-width" v-model="editable" id="quantity" min="1" maxlength="99" type="number">
            <button type="submit" class="mx-2 btn btn-primary rounded-pill">Add to Bag</button>
        </form>
    </div>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted, ref } from 'vue';
import Pop from '../utils/Pop';
import { checkoutService } from '../services/CheckoutService';
import { Product } from '../models/Product';
export default {
    props: {
        product: { type: Product, required: true }
    },
    setup() {
        const editable = ref(1);
        return {
            editable,
            AddToBag(product) {
                try {
                    for (let i = 0; i < editable.value; i++) {
                        checkoutService.AddToBag(product)
                    }
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


<style lang="scss" scoped>
.input-width {
    width: 6dvh;
}
</style>