<template>
  <div class="container-fluid">
    <section class="row hero-img">
      <div class="col-12">
        <div class="d-flex justify-content-center">
          <p class="hero-txt mb-0 text-center">A Console For Every Workflow</p>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  setup() {
    return {

    }
  }
}
</script>

<style scoped lang="scss">
.hero-img {
  background-image: url(https://images.unsplash.com/photo-1499951360447-b19be8fe80f5?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D);
  height: 47.5rem;
  width: auto;
  background-position: center;
  background-size: cover;
}

.hero-txt {
  margin-top: 19rem;
  font-size: 3em;
  font-weight: bold;
  color: #ff8b68;
  background-color: rgba(0, 0, 0, 0.415);
  backdrop-filter: blur(14px);
  padding: 0.2rem 2rem 0.2rem;
  border-radius: 27.5px;
}
</style>
