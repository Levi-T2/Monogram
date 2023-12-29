<template>
    <div class="accordion mt-3" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                    <p class="text-style mb-0">Product Description</p>
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div v-if="product" class="accordion-body">
                    {{ product.description }}
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    <p class="text-style mb-0">Our Editing Guarantee</p>
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    We stand by our products and our promises and we understand that everyone's workflow is
                    different, and even the most adaptable tool ever may not always fit. If Monogram Creative
                    Console does not improve your editing experience, you can return it for a full refund of the
                    original purchase price within 100 days. Contact us at support@monogramcc.com if you have
                    any concerns.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    <p class="text-style mb-0">Build Quality and Materials</p>
                </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    We take great pride and care in building our products to ensure the best quality and user
                    experience. That is why each Monogram module features:
                    <div>
                        <li>Precision CNC-machined from solid aerospace aluminum</li>
                        <li>Aluminum sandblasted surface for a premium textured finish</li>
                        <li>Anodized aluminum coating for durability and scratch resistance</li>
                        <li>Strong neodymium magnetic connectors allow for quick and secure attachment</li>
                        <li>Micro spring-loaded electrical contacts</li>
                        <li>Soft-touch ABS plastic underside</li>
                        <li>Grip ring on underside prevents unwanted slipping on table top</li>
                    </div>
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                    <p class="text-style mb-0">Shipping Information</p>
                </button>
            </h2>
            <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Free shipping to most regions on orders over $348. Orders are estimated to be delivered in
                    2-4 weeks. All orders are shipped via leading couriers and include tracking.

                    Note: International shipments do not include sales tax. For more questions about ordering,
                    see our Shipping & Sales FAQ or contact us at support@monogramcc.com
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                    <p class="text-style mb-0">Warranty</p>
                </button>
            </h2>
            <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Included with your Monogram hardware is a limited one (1) year manufacturer's warranty from
                    the date of purchase.

                    We also offer Monogram Care, which provides you with 36 months of additional coverage
                    including accidental. Learn more here.
                </div>
            </div>
        </div>
    </div>
</template>


<script>
import { Product } from '../models/Product';

export default {
    props: {
        product: { type: Product, required: true }
    },
    setup() {
        return {}
    }
};
</script>


<style lang="scss" scoped>
.text-style {
    font-size: 1.3em;
    color: #080b1b;
}

// This changes the built in styling for bootstrap accordions
.accordion {
    --bs-accordion-border-color: none;
    --bs-accordion-border-radius: none;
    --bs-accordion-bg: none;
    border-top: 1.75px solid #080b1b;
}

.accordion-button {
    border-radius: 0%;
    border-bottom: 1.75px solid #080b1b;
}

.accordion-item:last-of-type .accordion-button.collapsed {
    border-bottom-right-radius: 0%;
    border-bottom-left-radius: 0%;
}
</style>