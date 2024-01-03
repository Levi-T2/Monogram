<template>
    <div class="container color-bg mt-2 border-corners nav-position">
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
                        <div class="dropdown">
                            <button id="workflow-dropdown" class="btn dropdown-toggle" type="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Workflows
                            </button>
                            <ul class="dropdown-menu">
                                <RouterLink :to="{ name: 'Workflows', params: { productName: `audio` } }">
                                    <li><a class="dropdown-item">Audio Console</a></li>
                                </RouterLink>
                                <RouterLink :to="{ name: 'Workflows', params: { productName: `photo` } }">
                                    <li><a class="dropdown-item">Photo Console</a></li>
                                </RouterLink>
                                <RouterLink :to="{ name: 'Workflows', params: { productName: `video` } }">
                                    <li><a class="dropdown-item">Video Console</a></li>
                                </RouterLink>
                                <RouterLink :to="{ name: 'Workflows', params: { productName: `mini` } }">
                                    <li><a class="dropdown-item">Mini Console</a></li>
                                </RouterLink>
                            </ul>
                        </div>
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
// SECTION This CSS effects the built in properties of bootstraps dropdown.

#workflow-dropdown {
    color: #ff8b68;
}

.dropdown-menu {
    background-color: #1a2456;
}

.dropdown-item {
    color: #ff8b68;
}

// !SECTION

.border-corners {
    border-radius: 4px;
}

.nav-position {
    position: absolute;
}
</style>