<script setup lang="ts">
  const route = useRoute();
  const router = useRouter();
  const logoRoute = ref("/")
  const navButton = ref({
    name: "Status",
    route: "https://status.atridad.ca/status/public"
  });

  const routes = ref([{
    name: "Home",
    route: "/"
  },
  {
    name: "Projects",
    route: "/projects"
  },
  {
    name: "Freelance",
    route: "/freelance"
  }]);

  const links = ref([]);
  function setViewHeight () {
    let vh = window.innerHeight * 0.01
    document.documentElement.style.setProperty('--vh', `${vh}px`)
  }
  onMounted(() => {
    setViewHeight()
    window.addEventListener('resize', () => {
      setViewHeight()
    })
  })
</script>

<template>
<Head>
      <Title>Atri's Site</Title>
      <Meta name="description" content="Atri's Site" />
</Head>
    <NavBar :logoRoute="logoRoute" :routes="routes" :links="links" :button="navButton" />
    <NuxtPage />
</template>

<style>
html {
  background-color: #b8aceb;
}
</style>