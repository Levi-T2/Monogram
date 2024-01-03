<template>
    <div class="container-fluid">
        <section class="row">
            <div class="col-12 p-0">
                <WorkflowBanner />
            </div>
        </section>
        <section class="row my-3">
            <div class="col-12">
                <WorkflowSelector />
            </div>
        </section>
        <section v-if="route.path == '/workflows/audio'" class="row">
            audio
        </section>
        <section v-if="route.path == '/workflows/photo'" class="row">
            photo
        </section>
        <section v-if="route.path == '/workflows/video'" class="row">
            video
        </section>
        <section v-if="route.path == '/workflows/mini'" class="row">
            mini
        </section>
    </div>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
import WorkflowBanner from '../components/WorkflowBanner.vue';
import WorkflowSelector from '../components/WorkflowSelector.vue';
import { useRoute } from 'vue-router';
export default {
    setup() {
        const route = useRoute();
        return {
            route,
        };
    },
    components: { WorkflowBanner, WorkflowSelector }
};
</script>


<style lang="scss" scoped></style>