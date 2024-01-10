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
</style>