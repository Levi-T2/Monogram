<template>
    <section class="row bg-cus justify-content-center mb-5">
        <div class="col-5 mt-5">
            <p class="top-txt">The Human Touch to Composition</p>
            <p class="mb-0 bot-txt fs-5">Add dynamic expression and a tactile experience to your digital music
                composition
                with Creative Console.
                Personalize your compositions and productions with the uniquely modular tool-set that can be used with
                Digital
                Audio Workstations.</p>
        </div>
        <div class="col-5">
            <img src="https://monogramcc.com/static/2893592fe2fa8c46e36447df99a48453/3a25d/workflow_header_modules_d48217e6ba.png"
                alt="Audio Console" class="img-style">
        </div>
    </section>
    <section class="row justify-content-around align-items-center">
        <div class="col-6">
            <img src="https://monogramcc.com/static/f23913c16be54a31479bdf985b941975/33f51/1_expression_and_modulation_f66c411933.png"
                alt="Audio Examples" class="img-fluid">
        </div>
        <div class="col-4">
            <p class="top-txt-2">EXPRESSION, MODULATION, VIBRATO</p>
            <p class="mb-0 bot-txt">Easily map different MIDI CC's or key commands to control things like mod wheel
                data,
                expression, and vibrato. Use Channel Pressure to add expressive after touch to any MIDI instrument.</p>
        </div>
        <div class="col-4 mt-2">
            <p class="top-txt-2">SOUND DESIGN AND PATCH CONTROL</p>
            <p class="mb-0 bot-txt">Use Creative Console with Logic's Smart Controls and Cubase's VST Quick Controls.
                Endless
                encoder dials allow pickup-free adjustment of any parameter when switching patches and instruments. Use
                Orbiter
                to create an expressive X/Y pad from any two parameters.</p>
        </div>
        <div class="col-6 mt-2">
            <img src="https://monogramcc.com/static/a918eb4da3021f268e23b88748df3d78/33f51/2_sound_design_90ce7fd07b.png"
                alt="Audio Graphic" class="img-fluid">
        </div>
        <div class="col-6 mt-2">
            <img src="https://monogramcc.com/static/26ddf660f1aea892de0f2c9448570af1/33f51/3_transport_control_6b6fe37b5e.png"
                alt="Audio Graphic" class="img-fluid">
        </div>
        <div class="col-4 mt-2">
            <p class="top-txt-2">TRANSPORT CONTROL</p>
            <p class="mb-0 bot-txt">Quickly scrub your composition by beats and bars. Creative Console has support for all
                transport controls including play/pause, record, FF/RW. PLus punch in/out (record while playing back).</p>
        </div>
        <div class="col-4 mt-2">
            <p class="top-txt-2">AUDIO MIXING</p>
            <p class="mb-0 bot-txt">Control all your mixer tracks with modular tactile tools including volume, panning,
                toggling mute, solo, record.</p>
        </div>
        <div class="col-6 mt-2">
            <img src="https://monogramcc.com/static/dddedfd7eb15febfbe5814411ad8eb2e/33f51/4_mixing_1fd094a656.png"
                alt="Audio Graphic" class="img-fluid">
        </div>
    </section>
    <section class="row">
        <div v-if="product" class="col-12">
            <ProductWorkflowCard :product="product" />
        </div>
    </section>
</template>


<script>
import { AppState } from '../AppState';
import { computed, reactive, onMounted } from 'vue';
import Pop from '../utils/Pop';
import { productsService } from '../services/ProductsService';
import ProductWorkflowCard from './ProductWorkflowCard.vue';
export default {
    setup() {
        onMounted(() => {
            GetAudioConsole();
        });
        // NOTE I would like to make this a better function, but as of right now I'm not quite sure how to.
        async function GetAudioConsole() {
            try {
                const productId = 3;
                await productsService.GetProductById(productId);
            }
            catch (error) {
                Pop.error(error);
            }
        }
        return {
            product: computed(() => AppState.activeProduct),
        };
    },
    components: { ProductWorkflowCard }
};
</script>


<style lang="scss" scoped>
.top-txt {
    color: #1a2456;
    font-weight: bold;
    font-size: 2.25em;
}

.top-txt-2 {
    color: #1a2456;
    font-weight: bold;
    font-size: 1.85em;
}

.bot-txt {
    color: #1a2456;
}


.bg-cus {
    background-color: rgb(228, 192, 8);
    height: 19rem;
    position: relative;
}

.img-style {
    position: absolute;
    height: 30rem;
    width: auto;
    margin-left: 4rem;
    top: -100px;
}
</style>