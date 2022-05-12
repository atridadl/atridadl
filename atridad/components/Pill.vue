<script setup lang="ts">
    const props = defineProps(["name", "colour"])

    function getColourClass (colourString: string) {
        if (!colourString) {
            return "border-black text-black";
        }
        
        // I fucking hate this but Tailwind seems to hate class names 
        switch (colourString) {
            case "black":
                return "border-black text-black";
            case "white":
                return "border-white text-white";
            case "red":
                return "border-red-800 text-red-800";
            case "orange":
                return "border-orange-800 text-orange-800";
            case "yellow":
                return "border-yellow-800 text-yellow-800";
            case "pink":
                return "border-pink-800 text-pink-800";
            case "purple":
                return "border-purple-800 text-purple-800";
            case "blue":
                return "border-blue-800 text-blue-800";
            case "teal":
                return "border-teal-800 text-teal-800";
            case "green":
                return "border-green-800 text-green-800";
            default:
                return "border-black text-black";
        }
    }
</script>

<template>
    <div
        :class="getColourClass(props.colour)"
        class="no-underline inline-block text-sm px-4 py-2 leading-none border-2 rounded-full hover:border-black hover:text-black m-2 sm:mt-0"
    >
        {{ props.name || "" }}
    </div>
</template>