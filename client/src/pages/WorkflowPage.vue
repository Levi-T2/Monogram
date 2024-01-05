<template>
    <div class="container-fluid">
        <section class="row">
            <div class="col-12 p-0">
                <WorkflowBanner />
            </div>
        </section>
        <section class="row mt-4 mb-5">
            <div class="col-12">
                <WorkflowSelector />
            </div>
        </section>
        <section v-if="route.path == '/workflows/audio'" class="mt-4">
            <AudioWorkflow />
        </section>
        <section v-if="route.path == '/workflows/photo'" class="mt-4">
            <PhotoWorkflow />
        </section>
        <section v-if="route.path == '/workflows/video'" class="mt-4">
            <VideoWorkflow />
        </section>
        <section v-if="route.path == '/workflows/mini'" class="mt-4">
            <MiniWorkflow />
        </section>
    </div>
</template>


<script>
import WorkflowBanner from '../components/WorkflowBanner.vue';
import WorkflowSelector from '../components/WorkflowSelector.vue';
import AudioWorkflow from '../components/AudioWorkflow.vue';
import PhotoWorkflow from '../components/PhotoWorkflow.vue';
import VideoWorkflow from '../components/VideoWorkflow.vue';
import MiniWorkflow from '../components/MiniWorkflow.vue';
import { useRoute } from 'vue-router';

export default {
    setup() {
        const route = useRoute();
        return {
            route,
        };
    },
    components: { WorkflowBanner, WorkflowSelector, AudioWorkflow, PhotoWorkflow, VideoWorkflow, MiniWorkflow }
};
</script>


<style lang="scss" scoped></style>