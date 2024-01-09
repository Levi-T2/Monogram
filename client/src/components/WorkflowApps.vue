<template>
    <div class="col-12 col-md-7 py-4 text-center">
        <p class="title-txt">
            Includes 3 months free access to the best creative apps
        </p>
        <p class="info-txt">
            Monogram can adapt to work across your entire workflow. Access to creative apps is included free for 3 months
            with Mini Console.
        </p>
        <div>
            <img src="https://monogramcc.com/static/cca53dbab9edbad545e62167bbb783ad/5391d/creative_app_icons_006e0795d9.png"
                alt="Creative Apps" class="img-fluid">
        </div>
    </div>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
export default {
    setup() {
        return {}
    }
};
</script>


<style lang="scss" scoped>
.title-txt {
    color: #1a2456;
    font-weight: bold;
    font-size: 2em;
}

.info-txt {
    color: #1a2456;
}
</style>