<script setup lang="ts">
  const pills = [
    { name: "Vue", colour: "green" },
    { name: "AWS", colour: "orange" },
    { name: "CDK", colour: "orange" },
    { name: "JavaScript", colour: "yellow" },
    { name: "TypeScript", colour: "blue" },
    { name: "Git", colour: "black" },
    { name: "Golang", colour: "teal" },
    { name: "Bash", colour: "purple" },
    { name: "Firebase", colour: "orange" },
    { name: "WordPress", colour: "blue" },
    { name: "Node.js", colour: "green" },
  ];

  const socialLinks = [
    { text: "GitHub", name: "github", type: "fab", to: "https://github.com/atridadl" },
    { text: "Mastodon", name: "mastodon", type: "fab", to: "https://social.atridad.cloud/@atridad" },
    { text: "Gitea", name: "git-alt", type: "fab", to: "https://code.atridad.cloud/atridad" },
    { text: "Email", name: "envelope", type: "fas", to: "mailto:atridad@icloud.com" },
    { text: "Spotify", name: "spotify", type: "fab", to: "https://open.spotify.com/user/31t2imafllz5pplhzfrmkrmivpi4?si=4f8f0953cdb54136" },
    { text: "LinkedIn", name: "linkedin", type: "fab", to: "https://www.linkedin.com/in/atridad/" },
  ];
</script>

<template>
  <div>
    <h1 class="text-5xl font-black text-center">Hi, I'm Atridad!</h1>
    <h2 class="text-xl font-black text-center">(he/him)</h2>

    <img
      class="rounded-lg mx-auto my-6 max-w-[250px] w-1/2"
      src="~/assets/img/logo.webp"
      alt="A cartoon drawing of my me."
    />

    <SocialLinks :links="socialLinks" />

    <h3 class="text-2xl font-black text-center m-6">Half software developer. Half gamer. All nerd.</h3>

    <h3 class="text-lg font-black text-center m-6">Some of my skills:</h3>

    <PillBox :pills="pills" />
  </div>
</template>