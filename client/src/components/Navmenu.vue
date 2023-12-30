<template>
    <div class="container color-bg mt-2 border nav-position">
        <section class="row">
            <div class="col-12">
                <section class="row color-txt align-items-center justify-content-between">
                    <div class="col-2">
                        <RouterLink :to="{ name: 'Home' }" title="To Home Page">
                            <p class="fs-3 my-2 color-txt">
                                <span>
                                    <i class="mdi mdi-domain"></i>
                                </span>
                                Monogram
                            </p>
                        </RouterLink>
                    </div>
                    <div class="col-1 text-center">
                        <p class="mb-0">About</p>
                    </div>
                    <div class="col-1 text-center">
                        <!-- TODO Make this dropdown with its required items -->
                        <p class="mb-0">Workflows</p>
                    </div>
                    <div class="col-1 text-center">
                        <p class="mb-0">Download</p>
                    </div>
                    <div class="col-1 text-center">
                        <p class="mb-0">Blog</p>
                    </div>
                    <div class="col-1 text-center">
                        <p class="mb-0">Support</p>
                    </div>
                    <div class="col-1 text-center">
                        <p class="mb-0">Shop</p>
                    </div>
                    <div class="col-1 text-center">
                        <i title="See Bag" role="button" data-bs-toggle="offcanvas" data-bs-target="#Checkout"
                            class="fs-3 mdi mdi-basket-outline"></i>
                    </div>
                </section>
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
.border {
    border-radius: 4px;
}

.nav-position {
    position: absolute;
}
</style>