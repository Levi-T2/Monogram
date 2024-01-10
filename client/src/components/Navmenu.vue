<template>
    <div class="container color-bg mt-2 border-corners nav-position">
        <section class="row">
            <div class="col-12">
                <section class="row color-txt align-items-center justify-content-between">
                    <div class="col-5">
                        <RouterLink :to="{ name: 'Home' }" title="To Home Page">
                            <p class="fs-3 my-2 color-txt monogram-txt">
                                <span>
                                    <i class="mdi mdi-domain"></i>
                                </span>
                                MONOGRAM
                            </p>
                        </RouterLink>
                    </div>
                    <div class="col-1 text-center p-0">
                        <RouterLink :to="{ name: 'Info' }">
                            <p class="mb-0 color-txt">How it works</p>
                        </RouterLink>
                    </div>
                    <div class="col-1 text-center p-0">
                        <div class="dropdown">
                            <button title="To Workflow Page" class="btn dropdown-toggle" type="button"
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
                    <div class="col-1 text-center p-0">
                        <p class="mb-0">Download</p>
                    </div>
                    <div class="col-1 text-center p-0">
                        <p class="mb-0">Blog</p>
                    </div>
                    <div class="col-1 text-center p-0">
                        <RouterLink :to="{ name: 'Support' }" title="To Support Page">
                            <p class="mb-0 color-txt">Support</p>
                        </RouterLink>
                    </div>
                    <div class="col-1 text-center">
                        <i title="See Bag" role="button" data-bs-toggle="offcanvas" data-bs-target="#Checkout"
                            class="fs-3 mdi mdi-basket-outline btn-bag"></i>
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

.dropdown-toggle {
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

.btn-bag {
    padding: 0.15rem 0.3rem 0.15rem 0.3rem;
    border: 1.5px solid rgba(255, 255, 255, 0);
    transition: ease-in-out 0.225s;
    border-radius: 3px;
}

.btn-bag:hover {
    border: 1.5px solid gainsboro;
}
</style>