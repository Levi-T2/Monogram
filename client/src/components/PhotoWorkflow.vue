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
    <section class="row justify-content-around align-items-center switch-holder mb-5">
        <div class="col-3">
            <p class="mb-0 text-center switch-txt">Software Integrations</p>
        </div>
        <div class="col-6 d-flex justify-content-center">
            <div class="px-3">
                <a v-if="frame == 'Lightroom'" @click="ContentSwitch(selector[0])" role="button">
                    <img src="https://monogramcc.com/static/b7f717c13dacf2e987ac6fb88ea60f9f/lightroom_b752df0fbd.svg"
                        alt="Lightroom Logo" title="Lightroom" class="active-switch switch-size">
                </a>
                <a v-else @click="ContentSwitch(selector[0])" role="button">
                    <img src="https://monogramcc.com/static/b7f717c13dacf2e987ac6fb88ea60f9f/lightroom_b752df0fbd.svg"
                        alt="Lightroom Logo" title="Lightroom" class="switch-size">
                </a>
            </div>
            <div class="px-3">
                <a v-if="frame == 'Photoshop'" @click="ContentSwitch(selector[1])" role="button">
                    <img src="https://monogramcc.com/static/4f19eaa92750ec5be545c775a0fd0d7b/photoshop_b0d5e70c84.svg"
                        alt="Photoshop Logo" title="Photoshop" class="active-switch switch-size">
                </a>
                <a v-else @click="ContentSwitch(selector[1])" role="button">
                    <img src="https://monogramcc.com/static/4f19eaa92750ec5be545c775a0fd0d7b/photoshop_b0d5e70c84.svg"
                        alt="Photoshop Logo" title="Photoshop" class="switch-size">
                </a>
            </div>
            <div class="px-3">
                <a v-if="frame == 'Capture'" @click="ContentSwitch(selector[2])" role="button">
                    <img src="https://monogramcc.com/static/145d4ce2791f68aa92e2f35a83806f25/7801e/captureone_24e5cdb441.png"
                        alt="Capture One Logo" title="Capture One" class="active-switch switch-size">
                </a>
                <a v-else @click="ContentSwitch(selector[2])" role="button">
                    <img src="https://monogramcc.com/static/145d4ce2791f68aa92e2f35a83806f25/7801e/captureone_24e5cdb441.png"
                        alt="Capture One Logo" title="Capture One" class="switch-size">
                </a>
            </div>
        </div>
        <div class="col-3">
            <p class="mb-0 text-center switch-txt">{{ frame }}</p>
        </div>
    </section>
    <section v-show="frame == 'Lightroom'" id="Lightroom" class="row justify-content-around align-items-center">
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
    <section v-show="frame == 'Photoshop'" id="Photoshop" class="row justify-content-around align-items-center">
        <div class="col-6">
            <img src="https://monogramcc.com/static/0422c2eb18863a76a1802fb4def4cc61/33f51/Actions_5d45234b44.png"
                alt="Photoshop Graphic" class="img-fluid">
        </div>
        <div class="col-4">
            <p class="top-txt-2">APPLY MULTIPLE ACTIONS WITH ONE BUTTON</p>
            <p class="mb-0 bot-txt">Efficiently control the look and feel of images by assigning any action in photoshop to
                a key. Press for one, or press and hold to apply multiple or spread them across multiple keys.</p>
        </div>
        <div class="col-4 mt-2">
            <p class="top-txt-2">RETOUCH IN PHOTOSHOP AT LIGHTNING SPEED</p>
            <p class="mb-0 bot-txt">Precisely and quickly adjust any brush setting like opacity and hardness without opening
                menus, and use keys to quickly apply your colour swatch when painting or masking.</p>
        </div>
        <div class="col-6 mt-2">
            <img src="https://monogramcc.com/static/b39dc79b3f8835c2e44bf9b8dabcbe33/33f51/Seamless_switching_ef4d89def7.png"
                alt="Photoshop Graphic" class="img-fluid">
        </div>
        <div class="col-6 mt-2">
            <img src="https://monogramcc.com/static/762fe255da1e2a9ddc6b47801b8943ac/33f51/Color_swatches_02f4f61a82.png"
                alt="Photoshop Graphic" class="img-fluid">
        </div>
        <div class="col-4 mt-2">
            <p class="top-txt-2">ADD A PERSONAL TOUCH WITH COLOR SWATCHES</p>
            <p class="mb-0 bot-txt">Assign any color swatch to keys and dial presses within RGB, HSB, CMYK or Hex values.
                Less clicking = more time creating.</p>
        </div>
    </section>
    <section v-show="frame == 'Capture'" id="Capture" class="row justify-content-around align-items-center">
        <div class="col-6">
            <img src="https://monogramcc.com/static/5262ecd8f5202db246135ce1482f1d2a/33f51/Tether_Studio_728a5ab249.png"
                alt="Capture Graphic" class="img-fluid">
        </div>
        <div class="col-4">
            <p class="top-txt-2">MAXIMIZE YOUR TETHERED CAPTURE IN STUDIO</p>
            <p class="mb-0 bot-txt">Use Creative Console in studio to control focus, live view, and tethered capture in
                Capture One. Easily collaborate with clients or make adjustments during a shoot.</p>
        </div>
        <div class="col-4 mt-2">
            <p class="top-txt-2">BATCH EDIT PHOTOS IN HALF THE TIME</p>
            <p class="mb-0 bot-txt">Crop photos, resize images, and apply effects to hundreds of images with Creative
                Console and make minor tweaks and adjustments. Access presets with the click of a button.</p>
        </div>
        <div class="col-6 mt-2">
            <img src="https://monogramcc.com/static/cc04bec92dd5b82b449c9ccf74884661/33f51/Batch_edit_4d62330ef5.png"
                alt="Capture Graphic" class="img-fluid">
        </div>
        <div class="col-6 mt-2">
            <img src="https://monogramcc.com/static/6e21da1d0fff80caa566237428aa4c54/33f51/Full_color_grading_a1b036a0d5.png"
                alt="Capture Graphic" class="img-fluid">
        </div>
        <div class="col-4 mt-2">
            <p class="top-txt-2">FULL PRECISION COLOR GRADING</p>
            <p class="mb-0 bot-txt">Precise and interactive modules to control HSL tools in Lightroom and Color Balance
                Wheels in Capture One. Control B&W mixing and Split Toning all in one customizable editing console.</p>
        </div>
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
        const frame = ref("Lightroom")
        const selector = ["Lightroom", "Photoshop", "Capture"]
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
    margin-top: 5rem;
}

.img-style {
    position: absolute;
    height: 28rem;
    width: auto;
    margin-left: 4rem;
    top: -80px;
}

// SECTION This CSS holds the styling for the software selector for photo applications

.active-switch {
    transform: translateY(0.8em);
    // NOTE this does not look good, but it can be fixed
    // -webkit-box-shadow: 0px 0px 0px 14px #ff8b68;
    // -moz-box-shadow: 0px 0px 0px 14px #ff8b68;
    // box-shadow: 0px 0px 0px 14px #ff8b68;
}

.switch-size {
    width: 5.5em;
    height: 5.5em;
    object-position: center;
    object-position: cover;
}

.switch-holder {
    background-color: gainsboro;
    padding: 1.25rem;
}

.switch-txt {
    font-size: 2em;
    color: #1a2456;
    font-weight: bold;
}

// !SECTION
</style>