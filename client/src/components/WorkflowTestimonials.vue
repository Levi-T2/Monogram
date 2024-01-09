<template>
    <div class="col-12 col-md-7 pt-5 pb-3 text-center">
        <blockquote v-show="frame == 'reviewOne'">
            <p class="review-txt">
                It's SO rewarding to hit a button and share my screen while I'm on a video call. It just lets me focus on
                what I'm doing on the call and not on finding the app button.
            </p>
            <footer class="author-txt">
                <p>- Chris M., Marketing Specialist</p>
            </footer>
        </blockquote>
        <blockquote v-show="frame == 'reviewTwo'">
            <p class="review-txt">
                Honestly, this thing is game-changing. It seems silly to say but I feel like I'm enjoying listening to music
                more now that I have dedicated buttons to play, skip, turn up the volume, etc.
            </p>
            <footer class="author-txt">
                <p>- Paige L., Sales Manager</p>
            </footer>
        </blockquote>
        <blockquote v-show="frame == 'reviewThree'">
            <p class="review-txt">
                I always have 18 million tabs open in Chrome so when I had the chance to try Mini Console, I figured why
                not. It's super simple to navigate between all my tabs, and I find I'm closing them more often when I have a
                button my keyboard. Love it!
            </p>
            <footer class="author-txt">
                <p>- Jay S., Technical Recruiter</p>
            </footer>
        </blockquote>
    </div>
    <div class="col-12 pb-2">
        <div class="d-flex justify-content-center">
            <div>
                <button v-if="frame == 'reviewOne'" class="btn">
                    <i class="mdi mdi-circle btn-switch"></i>
                </button>
                <button v-else class="btn" @click="ReviewSwitcher(selector[0])">
                    <i class="mdi mdi-circle-outline btn-switch"></i>
                </button>
            </div>
            <div>
                <button v-if="frame == 'reviewTwo'" class="btn">
                    <i class="mdi mdi-circle btn-switch"></i>
                </button>
                <button v-else class="btn" @click="ReviewSwitcher(selector[1])">
                    <i class="mdi mdi-circle-outline btn-switch"></i>
                </button>
            </div>
            <div>
                <button v-if="frame == 'reviewThree'" class="btn">
                    <i class="mdi mdi-circle btn-switch"></i>
                </button>
                <button v-else class="btn" @click="ReviewSwitcher(selector[2])">
                    <i class="mdi mdi-circle-outline btn-switch"></i>
                </button>
            </div>
        </div>
    </div>
</template>


<script>
import { ref } from 'vue';
import Pop from '../utils/Pop';


export default {
    setup() {
        const frame = ref("reviewOne")
        const selector = ["reviewOne", "reviewTwo", "reviewThree"]
        return {
            frame,
            selector,
            ReviewSwitcher(review) {
                try {
                    frame.value = "";
                    frame.value = review;
                } catch (error) {
                    Pop.error(error);
                }
            }
        }
    }
};
</script>


<style lang="scss" scoped>
.review-txt {
    color: white;
    font-size: 1.5em;
    font-weight: 600;
    margin-bottom: 0%;
}

.author-txt {
    color: rgb(212, 212, 212);
    font-size: 1.25em;
    font-weight: 300;
    margin-bottom: 0%;
    padding-top: 0.35rem;
}

.btn-switch {
    color: white;
}
</style>