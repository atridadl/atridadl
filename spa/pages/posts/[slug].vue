<script setup>
  const { path } = useRoute()
  console.log(path)
  const { data } = await useAsyncData(`content-${path}`, () => {
    return queryContent().where({ _path: path }).findOne()
  })

  console.log(data)
</script>

<template>
  <main>
    <div class="flex flex-wrap justify-center items-center space-x-3 m-6">
      <ContentRenderer :value="data">
        <h1 class="text-xl font-black text-center">{{ data.title }}</h1>
        <h2 class="text-md font-black text-center">{{ data.date }}</h2>
        <MarkdownRenderer :value="data" />
      </ContentRenderer>
    </div>

    <div class="flex flex-wrap justify-center items-center space-x-3 m-6">
      <NuxtLink class="text-xl no-underline block mt-4 sm:inline-block sm:mt-0 text-black hover:text-pink-600 mr-4" to="/posts">
        👈 Back to Posts
      </NuxtLink>
    </div>
  </main>
</template>

<style>
</style>