<template>
    <div class="container-fluid ">
        <section class="row header-bg ">
            <div class="col-12 margin-cus d-flex justify-content-center">
                <h1 class="hero-txt-bg">Welcome to Monogram Support</h1>
            </div>
        </section>
        <section class="row my-4 justify-content-around g-3">
            <div class="col-12 col-md-3 card-style">
                <h4 class="py-3">Getting Started</h4>
                <p>Get started by setting up your Monogram Creative Console</p>
            </div>
            <div class="col-12 col-md-3 card-style">
                <h4 class="py-3">Using Monogram</h4>
                <p>How to create profiles, assign functions, and do some cool things with your Monogram Console
                </p>
            </div>
            <div class="col-12 col-md-3 card-style">
                <h4 class="py-3">Troubleshooting</h4>
                <p>Find some answers to common troubleshooting issues</p>
            </div>
            <div class="col-12 col-md-5 card-style">
                <h4 class="py-3">Community</h4>
                <p>Join the community and find user based answers and questions about Monogram</p>
            </div>
            <div class="col-12 col-md-5 card-style">
                <h4 class="py-3">FAQ</h4>
                <p>FAQ's about Hardware, Software, and Shipping & Delivery</p>
            </div>
        </section>
    </div>
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
.margin-cus {
    margin-top: 10rem;
}

.hero-txt-bg {
    background-color: rgba(213, 213, 213, 0.297);
    backdrop-filter: blur(7px);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 5.5rem;
    width: 45rem;
    border-radius: 5px;
}

.header-bg {
    background-image: url(https://theme.zdassets.com/theme_assets/748684/924477db7e8bcd016c9ce38bce082757fa25a2f7.jpg);
    height: 25rem;
    width: auto;
    background-position: center;
    background-size: cover;
}

.card-style {
    border: 1.5px solid black;
    border-radius: 2px;
    text-align: center;
}

// NOTE this could be not good, but it looks better
.col-md-3 {
    width: 31%;
}

.col-md-5 {
    width: 47.6%;
}
</style>