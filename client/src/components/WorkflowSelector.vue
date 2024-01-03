<template>
    <div class="d-flex justify-content-center border-style">
        <RouterLink class="txt" :to="{ name: 'Workflows', params: { productName: `audio` } }">
            <a v-if="route.path == '/workflows/audio'" role="button" class="active-page">Audio Console</a>
            <a v-else role="button">Audio Console</a>
        </RouterLink>
        <RouterLink class="txt" :to="{ name: 'Workflows', params: { productName: `photo` } }">
            <a v-if="route.path == '/workflows/photo'" role="button" class="active-page">Photo Console</a>
            <a v-else role="button">Photo Console</a>
        </RouterLink>
        <RouterLink class="txt" :to="{ name: 'Workflows', params: { productName: `video` } }">
            <a v-if="route.path == '/workflows/video'" role="button" class="active-page">Video Console</a>
            <a v-else role="button">Video Console</a>
        </RouterLink>
        <RouterLink class="txt" :to="{ name: 'Workflows', params: { productName: `mini` } }">
            <a v-if="route.path == '/workflows/mini'" role="button" class="active-page">Mini Console</a>
            <a v-else role="button">Mini Console</a>
        </RouterLink>
    </div>
</template>


<script>
import { useRoute } from 'vue-router';
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
export default {
    setup() {
        const route = useRoute();
        return {
            route,
        }
    }
};
</script>


<style lang="scss" scoped>
.active-page {
    font-weight: bold;
    border-bottom: 3px solid #1a2456;
    color: #1a2456;
}

.txt {
    font-size: 1.75em;
    color: #1a2456;
    padding: 0.3rem 1.2rem 0.3rem 1.2rem;
}

.border-style {
    border-top: 1.75px solid #1a2456;
    border-bottom: 1.75px solid #1a2456;
}
</style>