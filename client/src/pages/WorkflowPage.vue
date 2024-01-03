<template>
    <div class="container-fluid">
        <section class="row">
            <div class="col-12 p-0">
                <WorkflowBanner />
            </div>
        </section>
    </div>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
import WorkflowBanner from '../components/WorkflowBanner.vue';
export default {
    setup() {
        return {};
    },
    components: { WorkflowBanner }
};
</script>


<style lang="scss" scoped></style>