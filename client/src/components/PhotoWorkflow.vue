<template>
    <section class="row bg-cus justify-content-center mb-5">
        <div class="col-5 pt-5">
            <p class="top-txt">Immerse Yourself in Editing</p>
            <p class="mb-0 bot-txt fs-5">
                A dedicated photo editing console keeps your focus on the end result and helps you
                stay in the zone. Increase your experimentation and find surprising new results when you focus on your edits
                not menus.
            </p>
        </div>
        <div class="col-5">
            <img src="https://monogramcc.com/static/0aafd9257181bbfa2cc89b725e698a37/3a25d/workflow_header_photo_1_2dbb474733.png"
                alt="Photo Console" class="img-style">
        </div>
    </section>
    <section class="row mb-4">
        <div class="col-12 d-flex justify-content-center">
            <a @click="ContentSwitch(selector[0])" role="button" class="px-3">
                <img src="https://monogramcc.com/static/b7f717c13dacf2e987ac6fb88ea60f9f/lightroom_b752df0fbd.svg"
                    alt="Lightroom Logo" title="Lightroom" width="80" height="80">
            </a>
            <a @click="ContentSwitch(selector[1])" role="button" class="px-3">
                <img src="https://monogramcc.com/static/4f19eaa92750ec5be545c775a0fd0d7b/photoshop_b0d5e70c84.svg"
                    alt="Photoshop Logo" title="Photoshop" width="80" height="80">
            </a>
            <a @click="ContentSwitch(selector[2])" role="button" class="px-3">
                <img src="https://monogramcc.com/static/145d4ce2791f68aa92e2f35a83806f25/7801e/captureone_24e5cdb441.png"
                    alt="Capture One Logo" title="Capture One">
            </a>
        </div>
    </section>
    <section v-show="frame == 'lightroom'" class="row justify-content-around align-items-center">
        <div class="col-6">
            <img src="https://monogramcc.com/static/f4fa16b0f3640b4f044a883d266f3d9f/33f51/Seamless_app_switching_a24ea1f9dd.png"
                alt="Photo Graphic" class="img-fluid">
        </div>
        <div class="col-4">
            <p class="top-txt-2">SEAMLESSLY SWITCH BETWEEN APPS, TASKS AND WORKFLOWS</p>
            <p class="mb-0 bot-txt">
                Creative Console puts the controls you need at your fingertips, when you need them. Eliminate the need to
                memorize different keyboard shortcuts for each software.
            </p>
        </div>
        <div class="col-4 mt-2">
            <p class="top-txt-2">CATALOGUE THOUSANDS OF PHOTOS QUICKLY</p>
            <p class="mb-0 bot-txt">Cull thousands of photos in minutes with 3 optimally spaced keys to effortlessly color
                code, rate, pick, and reject. Use Creative Console's built-in macro support to automate repetitive sorting
                tasks.</p>
        </div>
        <div class="col-6 mt-2">
            <img src="https://monogramcc.com/static/20b2bcb68788c3611d5d9bd94f90df8a/33f51/Catalog_photos_dbdebfa1a7.png"
                alt="Photo Graphic" class="img-fluid">
        </div>
        <div class="col-6 mt-2">
            <img src="https://monogramcc.com/static/837498f1dbb157472849573c0c75a90f/33f51/Local_adjustments_f9d48fef7c.png"
                alt="Photo Graphic" class="img-fluid">
        </div>
        <div class="col-4 mt-2">
            <p class="top-txt-2">LOCAL ADJUSTMENTS AND LAYERS SUPPORT</p>
            <p class="mb-0 bot-txt">Context-sensitive controls with full support for local tools in Lightroom Classic, and
                layers in Capture One*
                or Photoshop. Creative Console automatically adjusts controls as you change from global adjustments, to
                brushes, or gradients.</p>
        </div>
    </section>
    <section v-show="frame == 'photoshop'" class="row">
        photoshop
    </section>
    <section v-show="frame == 'capture'" class="row">
        capture
    </section>
    <section class="row pt-2">
        <div v-if="product" class="col-12">
            <ProductWorkflowCard :product="product" />
        </div>
    </section>
</template>


<script>
import { AppState } from '../AppState';
import { computed, onMounted, ref } from 'vue';
import ProductWorkflowCard from './ProductWorkflowCard.vue';
import Pop from '../utils/Pop';
import { productsService } from '../services/ProductsService';
export default {
    setup() {
        const frame = ref("lightroom")
        const selector = ["lightroom", "photoshop", "capture"]
        onMounted(() => {
            GetPhotoConsole();
        })
        async function GetPhotoConsole() {
            try {
                const productId = 4;
                await productsService.GetProductById(productId);
            } catch (error) {
                Pop.error(error);
            }
        }
        return {
            selector,
            frame,
            product: computed(() => AppState.activeProduct),
            ContentSwitch(selector) {
                frame.value = "";
                frame.value = selector;
                console.log(frame.value)
            },
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
    font-size: 1.15em;
}

.bg-cus {
    background-color: rgb(247, 156, 107);
    height: 19rem;
    position: relative;
}

.img-style {
    position: absolute;
    height: 30rem;
    width: auto;
    margin-left: 4rem;
    top: -90px;
}
</style>