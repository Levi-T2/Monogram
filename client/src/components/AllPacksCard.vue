<template>
    <section v-if="packs" class="row pack-bg justify-content-around pb-5">
        <div class="col-12 text-center py-4">
            <p class="mb-0 pack-txt">Add even more power to Mini Console</p>
        </div>
        <div v-for="pack in packs" :key="pack.id" class="col-12 col-md-3 pack-card">
            <RouterLink title="See Product Page" :to="{ name: 'Details', params: { productId: pack.id } }">
                <img :src="pack.imgUrl" alt="Pack Image" class="pack-img">
                <div class="d-flex justify-content-between pt-1 align-items-center">
                    <p class="mb-0 pack-name">{{ pack.name }}</p>
                    <p class="mb-0 text-light">${{ pack.price }}</p>
                </div>
            </RouterLink>
        </div>
    </section>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
import Pop from '../utils/Pop';
import { productsService } from '../services/ProductsService';
export default {
    setup() {
        onMounted(() => {
            GetAllPacks();
        })
        async function GetAllPacks() {
            try {
                await productsService.GetAllPacks();
            } catch (error) {
                Pop.error(error);
            }
        }
        return {
            packs: computed(() => AppState.packs)
        }
    }
};
</script>


<style lang="scss" scoped>
.pack-bg {
    background-color: #1a2456;
    color: white;
}

.pack-card {
    transition: ease-in-out 0.235s;
}

.pack-card:hover {
    transform: translateY(-0.45em);
}

.pack-txt {
    font-size: 2.25em;
    font-weight: bold;
}

.pack-name {
    font-size: 1.25em;
    font-weight: 600;
    color: white;
}

.pack-img {
    height: 16rem;
    width: auto;
    border-radius: 2.5px;
}
</style>