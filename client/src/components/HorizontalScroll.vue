<template>
    <div @mouseenter="AddHorizontalScroll()" id="scroll-container" class="scrolling-container">
        <div class="scroll-card text-center">
            <section class="row card-bg">
                <div class="col-12 pt-4 pb-2">
                    <h3 class="blue-txt">Download Monogram Creator</h3>
                </div>
                <div class="col-6 py-2">
                    <i class="mdi mdi-apple blue-txt fs-1"></i>
                    <p class="mb-0 blue-txt">macOS 12+</p>
                    <button class="btn btn-primary rounded-pill">Mac Download</button>
                </div>
                <div class="col-6 py-2">
                    <i class="mdi mdi-microsoft blue-txt fs-1"></i>
                    <p class="mb-0 blue-txt">Windows 10, 64 bit</p>
                    <button class="btn btn-primary rounded-pill">Windows Download</button>
                </div>
                <div class="col-12 pt-3">
                    <p class="blue-txt wrap-txt fs-5">
                        Want to try the latest features and help improve app performance? Sign up for the Monogram Creator
                        Beta program here.
                    </p>
                </div>
            </section>
        </div>
        <div class="scroll-card text-center">
            <section class="row card-bg">
                <div class="col-12 pt-4 pb-2">
                    <h3 class="blue-txt">Start Connecting</h3>
                </div>
                <div class="col-12">
                    <p class="blue-txt mb-0 wrap-txt fs-4">Simply plug in the Core and magnetically snap modules together,
                        pin to
                        pad. The
                        LED halos light up when connected properly. Keep the layout simple or get creative and wrap it
                        around your keyboard or graphics tablet!</p>
                </div>
            </section>
        </div>
        <div class="scroll-card text-center">
            <section class="row card-bg">
                <div class="col-12 pt-4 pb-2">
                    <h3 class="blue-txt">Start Creating</h3>
                </div>
                <div class="col-12">
                    <p class="blue-txt wrap-txt fs-4">Launch Monogram Creator and say hello to productivity. Select your app
                        to
                        start
                        creating. Click on a module to customize it. It's that simple!</p>
                    <button class="btn btn-primary rounded-pill fw-bold">See Complete User Guide</button>
                </div>
            </section>
        </div>
    </div>
</template>


<script>
export default {
    setup() {
        return {
            AddHorizontalScroll() {
                const container = document.getElementById("scroll-container");
                // where "container" is the id of the container
                container.addEventListener("wheel", function (e) {
                    if (e.deltaY > 0) {
                        container.scrollLeft += 57.5;
                        e.preventDefault();
                        // preventDefault() will help avoid worrisome 
                        // inclusion of vertical scroll 
                    }
                    else {
                        container.scrollLeft -= 57.5;
                        e.preventDefault();
                    }
                });
                // That will work perfectly
            }
        }
    }
};
</script>


<style lang="scss" scoped>
.scrolling-container {
    overflow-x: scroll;
    overflow-y: hidden;
    white-space: nowrap;
    padding: 1.25rem;

    .scroll-card {
        display: inline-block;
        background-image: url(https://monogramcc.com/static/e62cd9098cc35451761d5474eacbe1f1/a464d/kickstarter-images-a.jpg);
        background-position: center;
        background-size: cover;
        height: 100%;
        height: 27.5em;
        width: 60em;
        // padding: 2.5rem;
        margin-left: 2rem;
        margin-left: 2rem;

        .card-bg {
            border-radius: 3.5px;
            background-color: rgba(255, 255, 255, 0.450);
            backdrop-filter: blur(7.5px);
            height: 80%;
            width: 80%;
            // position: absolute;
            transform: translate(10%, 10%);
        }
    }
}

.wrap-txt {
    white-space: normal;
}

// NOTE This will only hide our horizontal scroll var on browsers that support this pseudo-element.
.scrolling-container::-webkit-scrollbar {
    display: none;
}

.blue-txt {
    color: #1a2456
}

.btn-primary {
    background-color: #1a2456;
}
</style>