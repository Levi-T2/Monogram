<template>
    <section class="row bg-cus justify-content-center mb-5">
        <div class="col-5 pt-5">
            <p class="top-txt">Superpower your apps</p>
            <p class="mb-0 bot-txt fs-5">
                Physical, dedicated buttons make interacting with the apps you use most often more fun and efficient. Using
                the included Monogram Creator app, set-up takes less than 5 mins and can be customized to your exact needs.
            </p>
        </div>
        <div class="col-5">
            <img src="https://monogramcc.com/static/4c15e72c3d594cee82d6faeae43f649d/a27c3/mini_console_zoom_cefde2cc51.png"
                alt="Mini Console" class="img-style">
        </div>
    </section>
    <section class="row justify-content-around align-items-center switch-holder mb-5">
        <div class="col-3">
            <p class="mb-0 text-center switch-txt">Integrations</p>
        </div>
        <div class="col-6 d-flex justify-content-center">
            <div class="px-3">
                <a v-if="frame == 'Zoom'" role="button">
                    <img src="https://monogramcc.com/static/42aad80c49309c005335dac9826c6d82/zoomus_icon_4749e419a9.svg"
                        alt="Zoom Logo" title="Zoom" class="active-switch switch-size">
                </a>
                <a v-else role="button" @click="ContentSwitch(selector[0])">
                    <img src="https://monogramcc.com/static/42aad80c49309c005335dac9826c6d82/zoomus_icon_4749e419a9.svg"
                        alt="Zoom Logo" title="Zoom" class="switch-size">
                </a>
            </div>
            <div class="px-3">
                <a v-if="frame == 'Spotify'" role="button">
                    <img src="https://monogramcc.com/static/c0f6514154ed58ca4cc97c3d910eef67/spotify_3bb17c332a.svg"
                        alt="Spotify Logo" title="Spotify" class="active-switch switch-size">
                </a>
                <a v-else role="button" @click="ContentSwitch(selector[1])">
                    <img src="https://monogramcc.com/static/c0f6514154ed58ca4cc97c3d910eef67/spotify_3bb17c332a.svg"
                        alt="Spotify Logo" title="Spotify" class="switch-size">
                </a>
            </div>
            <div class="px-3">
                <a v-if="frame == 'Chrome'" role="button">
                    <img src="https://monogramcc.com/static/44f4e6eac9aeef7125b6a029710171ce/chrome_fceb75ce19.svg"
                        alt="Chrome Logo" title="Chrome" class="active-switch switch-size">
                </a>
                <a v-else role="button" @click="ContentSwitch(selector[2])">
                    <img src="https://monogramcc.com/static/44f4e6eac9aeef7125b6a029710171ce/chrome_fceb75ce19.svg"
                        alt="Chrome Logo" title="Chrome" class="switch-size">
                </a>
            </div>
            <div class="px-3">
                <a v-if="frame == 'Teams'" role="button">
                    <img src="https://monogramcc.com/static/74121f4f1aae56f5d49d497a173202d2/microsoft_teams_dff2370074.svg"
                        alt="Teams Logo" title="Teams" class="active-switch switch-size">
                </a>
                <a v-else role="button" @click="ContentSwitch(selector[3])">
                    <img src="https://monogramcc.com/static/74121f4f1aae56f5d49d497a173202d2/microsoft_teams_dff2370074.svg"
                        alt="Teams Logo" title="Teams" class="switch-size">
                </a>
            </div>
            <div class="px-3">
                <a v-if="frame == 'Music'" role="button">
                    <img src="https://monogramcc.com/static/707a07826ff645d5212ea894cc552169/apple_music_cd50753ac0.svg"
                        alt="Music Logo" title="Music" class="active-switch switch-size">
                </a>
                <a v-else role="button" @click="ContentSwitch(selector[4])">
                    <img src="https://monogramcc.com/static/707a07826ff645d5212ea894cc552169/apple_music_cd50753ac0.svg"
                        alt="Music Logo" title="Music" class="switch-size">
                </a>
            </div>
            <div class="px-3">
                <a v-if="frame == 'Safari'" role="button">
                    <img src="https://monogramcc.com/static/c4daa24300073169dc02ea7802a4df70/safari_d5f9379ff7.svg"
                        alt="Safari Logo" title="Safari" class="active-switch switch-size">
                </a>
                <a v-else role="button" @click="ContentSwitch(selector[5])">
                    <img src="https://monogramcc.com/static/c4daa24300073169dc02ea7802a4df70/safari_d5f9379ff7.svg"
                        alt="Safari Logo" title="Safari" class="switch-size">
                </a>
            </div>
        </div>
        <div class="col-3">
            <p class="mb-0 text-center switch-txt">{{ frame }}</p>
        </div>
    </section>
    <section v-show="frame == 'Zoom'" id="Zoom" class="row justify-content-around align-items-center mb-3">
        <div class="col-4">
            <p class="top-txt-2">Run Zoom Meetings Like a Pro</p>
            <p class="mb-0 bot-txt-2">
                No more, 'can you hear me?'' or 'can you see my screen'? With built in functionality for Zoom or Teams,
                you'll never have to fumble to find buttons again. Simple tasks like turning your video off has never been
                this fun.
            </p>
        </div>
        <div class="col-6">
            <img src="https://monogramcc.com/static/7e0dd7cace5f877447ba1840a0904377/975f3/Mini_App_combined_images_zoom_93595c8ac9.png"
                alt="Zoom Graphic" class="img-fluid">
        </div>
    </section>
    <section v-show="frame == 'Spotify'" id="Spotify" class="row justify-content-around align-items-center mb-3">
        <div class="col-4">
            <p class="top-txt-2">DJ at your desk</p>
            <p class="mb-0 bot-txt-2">
                Skip a track while listening to lo-fi beats at work, pause your music before you hop on a video call or
                crank up the volume as you edit some photos in Adobe Lightroom.
            </p>
        </div>
        <div class="col-6">
            <img src="https://monogramcc.com/static/404d382dee3611575bc5b2e5dc18eb75/975f3/Mini_App_combined_images_spotify_91b51c4ade.png"
                alt="Spotify Graphic" class="img-fluid">
        </div>
    </section>
    <section v-show="frame == 'Chrome'" id="Chrome" class="row justify-content-around align-items-center mb-3">
        <div class="col-4">
            <p class="top-txt-2">Browse the web with ease</p>
            <p class="mb-0 bot-txt-2">
                Stay immersed in the content you're viewing instead of managing your tabs. Quickly switch between tabs and
                windows, or open your favorite bookmarks to navigate to
            </p>
        </div>
        <div class="col-6">
            <img src="https://monogramcc.com/static/b16c8b76b475d80204f50f64a2b21eb4/975f3/Mini_App_combined_images_chrome_42cdf36ee1.png"
                alt="Chrome Graphic" class="img-fluid">
        </div>
    </section>
    <section v-show="frame == 'Teams'" id="Teams" class="row justify-content-around align-items-center mb-3">
        <div class="col-4">
            <p class="top-txt-2">Run Teams Meetings Like a Pro</p>
            <p class="mb-0 bot-txt-2">
                No more, 'can you hear me?' or 'can you see my screen'? With built in functionality for Zoom or Teams,
                you'll never have to fumble to find buttons again. Simple tasks like turning your video off has never been
                this fun.
            </p>
        </div>
        <div class="col-6">
            <img src="https://monogramcc.com/static/741a7a454e4c1f6ede25cebdd0fe1de5/975f3/Mini_App_combined_images_teams_73b20c70bc.png"
                alt="Teams Graphic" class="img-fluid">
        </div>
    </section>
    <section v-show="frame == 'Music'" id="Music" class="row justify-content-around align-items-center mb-3">
        <div class="col-4">
            <p class="top-txt-2">DJ at your desk</p>
            <p class="mb-0 bot-txt-2">
                Skip a track while listening to lo-fi beats at work, pause your music before you hop on a video call or
                crank up the volume as you edit some photos in Adobe Lightroom.
            </p>
        </div>
        <div class="col-6">
            <img src="https://monogramcc.com/static/9f1d4c09ce8e7d7df77d0b1660eff0e1/975f3/Mini_App_combined_images_music_67f7b2f048.png"
                alt="Music Graphic" class="img-fluid">
        </div>
    </section>
    <section v-show="frame == 'Safari'" id="Safari" class="row justify-content-around align-items-center mb-3">
        <div class="col-4">
            <p class="top-txt-2">Browse the web with ease</p>
            <p class="mb-0 bot-txt-2">Stay immersed in the content you're viewing instead of managing your tabs. Quickly
                switch between tabs and windows, or open your favorite bookmarks to navigate to.</p>
        </div>
        <div class="col-6">
            <img src="https://monogramcc.com/static/d66eb604b9d2780fa9a8a2e50c2ef9eb/975f3/Mini_App_combined_images_safari_ea930832f0.png"
                alt="Safari Graphic" class="img-fluid">
        </div>
    </section>
    <section class="row review-bg justify-content-center">
        <WorkflowTestimonials />
    </section>
    <section class="row">
        <div v-if="product" class="col-12">
            <ProductWorkflowCard :product="product" />
        </div>
    </section>
    <section class="row justify-content-center">
        <WorkflowApps />
    </section>
    <!-- NOTE Since the mini console has no pack, I have made a comp. that brings in the other packs to purchase. -->
    <AllPacksCard />
</template>


<script>
import { AppState } from '../AppState';
import { computed, onMounted, ref } from 'vue';
import WorkflowTestimonials from './WorkflowTestimonials.vue';
import Pop from '../utils/Pop';
import { productsService } from '../services/ProductsService';
import ProductWorkflowCard from './ProductWorkflowCard.vue';
import WorkflowApps from './WorkflowApps.vue';
import AllPacksCard from './AllPacksCard.vue';
export default {
    setup() {
        const frame = ref("Zoom");
        const selector = ["Zoom", "Spotify", "Chrome", "Teams", "Music", "Safari"];
        onMounted(() => {
            GetMiniConsole();
        });
        async function GetMiniConsole() {
            try {
                const productId = 2;
                await productsService.GetProductById(productId);
            }
            catch (error) {
                Pop.error(error);
            }
        }
        return {
            frame,
            selector,
            ContentSwitch(selector) {
                frame.value = "";
                frame.value = selector;
            },
            product: computed(() => AppState.activeProduct),
        };
    },
    components: { WorkflowTestimonials, ProductWorkflowCard, WorkflowApps, AllPacksCard }
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
    color: white;
    font-size: 1.15em;
}

.bot-txt-2 {
    color: #1a2456;
    font-size: 1.1em;
}

.bg-cus {
    background-color: #1a2456;
    height: 19rem;
    position: relative;
    margin-top: 5rem;
}

.img-style {
    position: absolute;
    height: 32rem;
    width: auto;
    margin-left: 4rem;
    top: -95px;
}

.review-bg {
    background-color: #1a2456;
}

// SECTION This CSS holds the styling for the software selector for the mini console apps

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
