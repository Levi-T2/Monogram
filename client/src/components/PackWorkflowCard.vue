<template>
    <section class="row justify-content-around pack-bg py-4">
        <div class="col-5">
            <img :src="pack.imgUrl" alt="Pack Image" class="img-fluid">
        </div>
        <div class="col-6">
            <p class="name-txt">{{ pack.name }} (Included)</p>
            <p>{{ pack.description }}</p>
            <div>
                <p class="fw-bold">Universal MIDI (1.0)</p>
                <p>1000's of possibilities with support for most DAWs including Logic Pro, Cubase, Ableton, FL Studio,
                    Reaper
                    and more.</p>
            </div>
            <div>
                <p class="fw-bold">What Else?</p>
                <li>Includes 12 months of updates</li>
                <li>Updates will begin after 3 month Trial</li>
                <li>If purchased, additional hardware modules (Essential Keys Module, Dial Module, Slider Module, Orbiter
                    Module) will also gain all of the functions included in the Audio Pack</li>
            </div>
        </div>
    </section>
</template>


<script>
import { Product } from '../models/Product';


export default {
    props: {
        pack: { type: Product, required: true }
    },
    setup() {

        return {

        }
    }
};
</script>


<style lang="scss" scoped>
.name-txt {
    font-size: 2em;
    font-weight: bold;
}

.pack-bg {
    background-color: #1a2456;
    color: white;
}
</style>