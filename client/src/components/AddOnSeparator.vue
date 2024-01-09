<template>
    <div class="col-12 py-3">
        <div class="accordion">
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapseInfo" aria-expanded="false" aria-controls="collapseInfo" title="See Info">
                        Console Add-On Packs
                        <span role="button" class="fs-3">
                            <i class="mdi mdi-information"></i>
                        </span>
                    </button>
                </h2>
                <div id="collapseInfo" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body text-center fs-4">These add additional capabilities to your Monogram console.
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- <p class="mb-0 separator-txt">Console Add-On Packs
        <span role="button" class="fs-3">
            <i class="mdi mdi-information"></i>
        </span>
    </p> -->
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
.accordion-button {
    background-color: #1a2456;
    color: #ff8b68;
    font-size: 1.25em;
    font-weight: bold;
    display: block;
    text-align: center;
}
</style>