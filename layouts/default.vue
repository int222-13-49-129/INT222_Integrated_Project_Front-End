<template>
  <div class="w-full  h-full fixed" :style="cssProps" >
    <div class="w-full h-full bg-gray-300 bg-opacity-50 fixed" :class="{ 'xl:py-0 py-8 flex flex-col overflow-scroll': isindex }">
        <div :class="isindex ? 'my-auto':'w-full h-full fixed overflow-scroll'">
        <TheHeader :isindex="isindex"  :class="isindex ? 'xl:px-16 mx-auto xl:w-336 w-11/12 h-20 bg-white shadow-lg' : 'fixed top-0 xl:px-16 min-w-max w-full h-16 bg-white shadow-md z-10'"/>
        <Nuxt />
        </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        cssProps: {
          backgroundImage: `url(${require("../assets/img/bg.png")})`,
          backgroundSize: "400px 400px",
        }
      };
    },
    computed: {
    isindex() {
      return this.$route.name === 'index' || this.$route.name === 'aboutus';
    }
  }
  }
</script>
