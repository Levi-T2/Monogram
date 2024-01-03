<template>
    <div class="image-container">
        <div>
            <!-- SECTION This images change based on the path of the route -->
            <img v-if="route.path == '/workflows/audio'"
                src="https://monogramcc.com/static/16657e5262054d3d7ce62dd3c3845d79/18dc1/mono_poster_5_ffc9bf0a15.jpg"
                alt="Workflow Banner" class="banner-size">
            <img v-if="route.path == '/workflows/photo'"
                src="https://monogramcc.com/static/c33f2038f47b0cee024d44e3d76ecd4e/18dc1/mono_poster_4_1db125a1c3.jpg"
                alt="Workflow Banner" class="banner-size">
            <img v-if="route.path == '/workflows/video'"
                src="https://monogramcc.com/static/2be12fa49125da1537b7c63c47231953/18dc1/mono_poster_3_9ef8a113f6.jpg"
                alt="Workflow Banner" class="banner-size">
            <img v-if="route.path == '/workflows/mini'"
                src="https://monogramcc.com/static/d0d2f53b65d997bacf9bc0e78f67620f/18dc1/mono_poster_1_003361431a.jpg"
                alt="Workflow Banner" class="banner-size">
            <!-- !SECTION -->
        </div>
        <div class="workflow-pos">
            <p class="mb-0 workflow-txt">Workflow</p>
        </div>
        <div class="title-pos">
            <p v-if="route.path == '/workflows/audio'" class="mb-0 title-txt">Audio and Music Production</p>
            <p v-if="route.path == '/workflows/photo'" class="mb-0 title-txt">Photo Editing and Retouching</p>
            <p v-if="route.path == '/workflows/video'" class="mb-0 title-txt">Video Editing and Color</p>
            <p v-if="route.path == '/workflows/mini'" class="mb-0 title-txt">Everyday Essentials</p>
        </div>
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
.banner-size {
    height: 32rem;
    width: 100%;
    object-fit: cover;
    object-position: center;
}

.workflow-txt {
    color: white;
    font-size: 4.25em;
}

.title-txt {
    color: white;
    font-size: 5em;
    font-weight: bold;
}

.image-container {
    position: relative;
    text-align: center;
}

.workflow-pos {
    position: absolute;
    top: 100px;
    left: 50px;
}

.title-pos {
    position: absolute;
    top: 175px;
    left: 50px;
}
</style>