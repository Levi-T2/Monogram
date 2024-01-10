<template>
    <div class="container-fluid">
        <section class="row">
            <div class="col-12 p-0">
                <img src="https://monogramcc.com/static/4d1c5071923fc22a4d43cbc7f060af7d/f1523/enviro1_monogram_may20203916_label_6ba5dc7b68.jpg"
                    alt="Monogram Graphic" class="hero-img">
            </div>
        </section>
        <section class="row hero-bg py-4">
            <div class="col-12 text-center">
                <h1 class="color-txt fw-bold my-2">Get Started in 3 Easy Steps</h1>
                <p class="color-txt fs-5">Creative Console provides a fast and simple set up with magnetically connecting
                    modules
                    and a user-friendly app.</p>
            </div>
        </section>
        <section class="row hero-bg">
            <HorizontalScroll />
        </section>
        <section class="row peach-bg justify-content-center align-items-center">
            <div class="col-12 col-md-5 text-start">
                <h3 class="blue-txt pt-5 fw-bold">Personalize to the Way You Work</h3>
                <p class="mb-0 blue-txt pb-5 fs-4">
                    Monogram Creator app makes customizing a breeze. Customize each module to
                    your needs, change module sensitivity, or create an entirely new profile for each stage of your
                    workflow.
                </p>
            </div>
            <div class="col-12 col-md-6">
                <img src="https://monogramcc.com/static/fdc19928460dd9b1085ec1e7ae37c6bc/cf381/imac-features-full.jpg"
                    alt="Monogram Graphic" class="img-fluid">
            </div>
        </section>
        <section class="row peach-bg justify-content-around align-items-center">
            <div class="col-12 col-md-5">
                <h3 class="blue-txt pt-5 fw-bold">Native Compatibility</h3>
                <p class="mb-0 blue-txt pb-5 fs-4">
                    Native integrations hook directly into software for the greatest level of control and the smoothest
                    performance. Unlike hotkeys, Creative Console gives you the most engaging tactile experience that
                    connects you to your work. Make adjustments incrementally, or quickly and smoothly increase values while
                    focusing on the result in front of you. Native compatibility includes Adobe Creative Suite, Unreal
                    Engine, and Capture One Pro.
                </p>
            </div>
            <div class="col-12 col-md-5">
                <h3 class="blue-txt pt-5 fw-bold">Universal Compatibility</h3>
                <p class="mb-0 blue-txt pb-5 fs-4">
                    Use Monogram Creative Console with any software. Creative Console can control virtually any software so
                    you can control your favorite app, even if it's not officially supported, by customizing each module
                    via universal input modes like: keyboard shortcuts, MIDI, mouse clicks, and joystick actions. Universal
                    Compatibility works great with apps like Ableton Live, Logic, Chrome, Spotify, and more.
                </p>
            </div>
        </section>
        <section class="row footer-bg justify-content-end">
            <div class="col-6 text-start my-5">
                <h3 class="blue-txt pt-5 fw-bold">Experience it Yourself</h3>
                <p class="blue-txt">Level up your productivity with high-quality tools trusted by creative professionals.
                </p>
                <button class="btn btn-primary rounded-pill fw-bold">Shop Now</button>
            </div>
        </section>
    </div>
</template>


<script>
import HorizontalScroll from '../components/HorizontalScroll.vue'
export default {
    setup() {
        return {}
    },
    components: { HorizontalScroll },
};
</script>


<style lang="scss" scoped>
.hero-img {
    height: 32rem;
    width: 100%;
    object-fit: cover;
    object-position: center;
}

.hero-bg {
    background-color: #1a2456;
}

.peach-bg {
    background-color: #efc2b3;
}

.blue-txt {
    color: #1a2456
}

.btn-primary {
    background-color: #1a2456;
}

.footer-bg {
    background-image: url(https://monogramcc.com/static/1d8eee51db6b5d28ac31ae726ebc085c/71393/shop-cta.jpg);
    background-position: center;
    background-size: cover;
}
</style>