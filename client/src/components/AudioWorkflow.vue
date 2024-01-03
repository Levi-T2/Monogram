<template>
    <section class="row bg-cus justify-content-center mb-5">
        <div class="col-5 mt-5">
            <p class="top-txt">The Human Touch to Composition</p>
            <p class="mb-0 bot-txt fs-5">Add dynamic expression and a tactile experience to your digital music
                composition
                with Creative Console.
                Personalize your compositions and productions with the uniquely modular tool-set that can be used with
                Digital
                Audio Workstations.</p>
        </div>
        <div class="col-5">
            <img src="https://monogramcc.com/static/2893592fe2fa8c46e36447df99a48453/3a25d/workflow_header_modules_d48217e6ba.png"
                alt="Audio Console" class="img-style">
        </div>
    </section>
    <section class="row justify-content-around">
        <div class="col-6">
            <img src="https://monogramcc.com/static/f23913c16be54a31479bdf985b941975/33f51/1_expression_and_modulation_f66c411933.png"
                alt="Audio Examples" class="img-fluid">
        </div>
        <div class="col-4">
            <p class="top-txt-2">EXPRESSION, MODULATION, VIBRATO</p>
            <p class="mb-0 bot-txt">Easily map different MIDI CC's or key commands to control things like mod wheel
                data,
                expression, and vibrato. Use Channel Pressure to add expressive aftertouch to any MIDI instrument.</p>
        </div>
    </section>
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
.top-txt {
    color: #1a2456;
    font-weight: bold;
    font-size: 2.25em;
}

.top-txt-2 {
    color: #1a2456;
    font-weight: bold;
    font-size: 1.85em;
}

.bot-txt {
    color: #1a2456;
}


.bg-cus {
    background-color: rgb(228, 192, 8);
    height: 19rem;
    position: relative;
}

.img-style {
    position: absolute;
    height: 30rem;
    width: auto;
    margin-left: 4rem;
    top: -100px;
}
</style>