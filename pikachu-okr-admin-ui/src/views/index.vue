<template>
  <div style="position: absolute;width: 100%;bottom: 175px;display: flex;justify-content: center">
      <!--<img style="height: 390px;width:auto;" :src="bgImg"/>-->
  </div>
</template>

<script>
  // import bgImg from "@/assets/images/index-img.png"

export default {
  name: "index",
  data() {
    return {
      // bgImg: bgImg,
      // 版本号
      version: "3.3.0",
    };
  },
  methods: {
    goTarget(href) {
      window.open(href, "_blank");
    },
  },
};
</script>

