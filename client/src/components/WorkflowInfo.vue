<template>
    <div class="image-container">
        <img src="https://monogramcc.com/static/d0d2f53b65d997bacf9bc0e78f67620f/c693b/mono_poster_1_003361431a.webp"
            alt="Banner" class="img-size">
        <div class="container-centered">
            <p class="text-style">Everyday Essentials</p>
            <p class="details-style">With Mini Console, Monogram makes interacting with everyday common apps like zoom and
                slack easier and fun to
                use.</p>
            <!-- TODO link this button to our workflow page -->
            <button class="btn btn-info rounded-pill">Learn More</button>
        </div>
    </div>
</template>


<script>
export default {
    setup() {
        return {}
    }
};
</script>


<style lang="scss" scoped>
.img-size {
    height: 25rem;
    width: 100%;
    object-fit: cover;
    border-radius: 2.5px;
}

.text-style {
    color: #1a2456;
    font-size: 1.85em;
    font-weight: bold;
}

.details-style {
    color: #1a2456;
    font-size: 1.3em;
}

.image-container {
    position: relative;
    text-align: center;
}

.container-centered {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: rgba(245, 245, 245, 0.775);
    padding: 1.75rem;
    border-radius: 2.5px;
}
</style>