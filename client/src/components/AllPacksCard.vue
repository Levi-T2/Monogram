<template>
    <section class="row pack-bg">
        <div class="col-12 text-center py-3">
            <p class="mb-0 pack-txt">Add even more power to Mini Console</p>
        </div>
    </section>
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
.pack-bg {
    background-color: #1a2456;
    color: white;
}

.pack-txt {
    font-size: 2em;
    font-weight: bold;
}
</style>