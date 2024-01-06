<template>
    <section class="row bg-cus justify-content-center mb-5">
        <div class="col-5 pt-5">
            <p class="top-txt">Engage with your Storytelling</p>
            <p class="mb-0 bot-txt text-light fs-5">Video Console is a powerful tool that gives you the flexibility to both
                edit and
                color grade with unmatched precision. Increase your productivity with it's easy to learn system and helpful
                shortcuts for your favorite software.
            </p>
        </div>
        <div class="col-5">
            <img src="https://monogramcc.com/static/75187db75d59950ba5bb312e29559778/70e2c/workflow_header_video_2_0104eb76ff.png"
                alt="Video Console" class="img-style">
        </div>
    </section>
    <section class="row justify-content-around align-items-center switch-holder mb-5">
        <div class="col-3">
            <p class="mb-0 text-center switch-txt">Software Integrations</p>
        </div>
        <div class="col-6 d-flex justify-content-center">
            <div class="px-3">
                <a v-if="frame == 'Premier Pro'" @click="ContentSwitch(selector[0])" role="button">
                    <img src="https://monogramcc.com/static/a27bc20598f30e6a7859da487d8129e3/premierepro_941d31ce25.svg"
                        alt="Premier Pro Logo" title="Premier Pro" class="active-switch switch-size">
                </a>
                <a v-else @click="ContentSwitch(selector[0])" role="button">
                    <img src="https://monogramcc.com/static/a27bc20598f30e6a7859da487d8129e3/premierepro_941d31ce25.svg"
                        alt="Premier Pro Logo" title="Premier Pro" class="switch-size">
                </a>
            </div>
            <div class="px-3">
                <a v-if="frame == 'Final Cut'" @click="ContentSwitch(selector[1])" role="button">
                    <img src="https://monogramcc.com/static/c5e495a4d26077ea073be90a5f337946/7801e/final_cut_b47ac07e5e.png"
                        alt="Final Cut Logo" title="Final Cut" class="active-switch switch-size">
                </a>
                <a v-else @click="ContentSwitch(selector[1])" role="button">
                    <img src="https://monogramcc.com/static/c5e495a4d26077ea073be90a5f337946/7801e/final_cut_b47ac07e5e.png"
                        alt="Final Cut Logo" title="Final Cut" class="switch-size">
                </a>
            </div>
        </div>
        <div class="col-3">
            <p class="mb-0 text-center switch-txt">{{ frame }}</p>
        </div>
    </section>
    <section v-show="frame == 'Premier Pro'" class="row justify-content-around align-items-center">
        <div class="col-6">
            <!-- NOTE This will embed youtube videos easily for us with and embed URL and video ID supplied -->
            <iframe class="thumbnail-size" src="https://www.youtube.com/embed/IHr1eAdkcrg"></iframe>
        </div>
        <div class="col-4">
            <p class="top-txt-2">COMPILE CLIPS & ADD B-ROLL</p>
            <p class="mb-0 bot-txt">
                Quickly assemble a talking head storyline for A-roll in your edit, and then add B-roll
                clips to your timeline with ultimate speed and efficiency.
            </p>
        </div>
        <div class="col-4 mt-3">
            <p class="top-txt-2">POLISH, EDIT & EFFECTS</p>
            <p class="mb-0 bot-txt">
                With your clips organized in your timeline, adjust scale and position with Dials, fix shaky clips or add a
                dissolve between clips. Then, adjust tempo add text elements with the press of a button - your workflow,
                your choice.
            </p>
        </div>
        <div class="col-6 mt-3">
            <iframe class="thumbnail-size" src="https://www.youtube.com/embed/WxkGWeMsFWE"></iframe>
        </div>
        <div class="col-6 mt-3">
            <iframe class="thumbnail-size" src="https://www.youtube.com/embed/5m-iewq3pQQ"></iframe>
        </div>
        <div class="col-4 mt-3">
            <p class="top-txt-2">COLOR & AUDIO</p>
            <p class="mb-0 bot-txt">
                Put your final touches on your work with precision color correction and balance across the timeline and then
                dial in audio levels or add effects. No downloads necessary, all profiles are included to make your workflow
                a breeze.
            </p>
        </div>
    </section>
    <section v-show="frame == 'Final Cut'" class="row justify-content-around align-items-center">
        <div class="col-6">
            <img src="https://monogramcc.com/static/04cf11f94862c3b2bc6d407888c92be2/33f51/FCP_color_203c544543.png"
                alt="Video Graphic" class="img-fluid">
        </div>
        <div class="col-4">
            <p class="top-txt-2">Precise and Intuitive Color Correction</p>
            <p class="mb-0 bot-txt">Creative Console is a portable color grading panel that allows you to apply Lumetri and
                Final Cut Pro color adjustments including all basic corrections, creative effects, and vignette properties.
            </p>
        </div>
    </section>
    <section class="row pt-2">
        <div v-if="product" class="col-12">
            <ProductWorkflowCard :product="product" />
        </div>
    </section>
</template>

<script>
import { computed, onMounted, ref } from 'vue';
import Pop from '../utils/Pop';
import { productsService } from '../services/ProductsService';
import { AppState } from '../AppState';
import ProductWorkflowCard from './ProductWorkflowCard.vue';
export default {
    setup() {
        const frame = ref("Premier Pro");
        const selector = ["Premier Pro", "Final Cut"];
        onMounted(() => {
            GetVideoConsole();
        });
        async function GetVideoConsole() {
            try {
                const productId = 5;
                await productsService.GetProductById(productId);
            }
            catch (error) {
                Pop.error(error);
            }
        }
        return {
            frame,
            selector,
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
    color: white;
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
    background-color: rgb(114, 144, 114);
    height: 19rem;
    position: relative;
    margin-top: 5rem;
}

.img-style {
    position: absolute;
    height: 28rem;
    width: auto;
    margin-left: 4rem;
    top: -77px;
}

.thumbnail-size {
    height: 25rem;
    width: 100%
}

// SECTION This CSS holds the styling for the software selector for video applications

.active-switch {
    transform: translateY(0.8em);
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