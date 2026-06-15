<script lang="ts" setup>
definePageMeta({
  layout: 'default',
})
const years = computed(() => new Date().getFullYear() - 2015)
const { data: resume } = await useFetch('/api/resume')
</script>
<template>
  <UContainer class="print:max-w-none print:w-full print:p-0 print:bg-white print:text-black">
    <div style="border-image: linear-gradient(to bottom, #27272a 0%, #27272a00 5%) 1;"
      class="border-[.5rem] sm:border-[1rem] p-[1rem] sm:p-[2rem] print:border-0 print:p-0 print:shadow-none print:[border-image:none]">
      <div class="flex sm:flex-row flex-col xs:flex-nowrap items-center print:mb-2 mb-16 print:break-inside-avoid">
        <img class="shadow-lg inline-block rounded-full sm:w-40 w-20 sm:mr-4 print:shadow-none" src="/image.png">
        <div>
          <div class="print:text-lg text-2xl font-bold text-center sm:text-left mb-4">
            Alex Fong
          </div>
          <div class="mb-4 max-w-[28rem]">Fullstack software engineer with deep experience in designing scalable systems
            and processes from scratch.</div>
          <div class="flex items-center">
            <UIcon name="i-lucide-map-pin" class="mr-2 print:hidden" />
            <div>Greater Madison Area, Wisconsin, USA</div>
          </div>
          <div class="flex items-center">
            <UIcon name="i-lucide-hourglass" class="mr-2 print:hidden" />
            <div>{{ years }} years of experience</div>
          </div>
          <div class="flex items-center">
            <UIcon name="i-lucide-mail" class="mr-2 print:hidden" />
            <a class="text-blue-400 underline print:text-black" href="mailto:alex@birdlaw.dev">alex@birdlaw.dev</a>
          </div>
          <div class="flex items-center">
            <UIcon name="i-lucide-github" class="mr-2 print:hidden" />
            <a class="text-blue-400 underline print:text-black"
              href="https://github.com/birdlavv">https://github.com/birdlavv</a>
          </div>
          <div class="flex items-center print:hidden">
            <UIcon name="i-lucide-code" class="mr-2 print:hidden" />
            <a class="text-blue-400 underline" href="https://github.com/birdlavv/birdlaw-dev">View source on Github
              (This
              site was made with Nuxt 4 and Tailwind!)</a>
          </div>
          <div class="flex items-center">
            <UIcon name="i-lucide-folder-open" class="mr-2 print:hidden" />
            <NuxtLink class="text-blue-400 underline print:hidden" to="/portfolio">View portfolio</NuxtLink>
          </div>
        </div>
      </div>
      <div v-if="resume" class="grid grid-cols-3">
        <div class="lg:col-span-2 col-span-3">
          <div class="mb-6 pb-6 mr-6 border-b-2 border-zinc-800">
            Below is a non-exhaustive list of some of the notable projects I've worked on.
          </div>
          <div class="print:text-2xl font-bold text-4xl mb-6">Work history</div>
          <div v-for="job in resume.workHistory" class="mb-4">
            <div class="text-2xl font-bold mb-2">{{ job.companyName }}</div>
            <Chip size="small"
              class="mb-1 bg-indigo-600 mr-1 print:bg-transparent print:text-black print:border print:border-black">{{
                job.role
              }}</Chip>
            <Chip size="small" v-for="tool in job.tools"
              class="mr-1 mb-1 bg-zinc-800 print:bg-transparent print:text-black print:border print:border-black">
              {{ tool }}
            </Chip>
            <div class="print:p-0 ml-4 mb-6 rounded-lg mr-6 print:break-inside-avoid print:border-black">
              <ul class="list-disc pl-4 mb-4">
                <li v-for="item of job.tldr">{{ item }}</li>
              </ul>
            </div>
          </div>
        </div>
        <div v-if="resume" class="lg:col-span-1 col-span-3">
          <div v-for="skillList in resume.skills" class="mb-4">
            <div class="opacity-50 font-bold mb-2 text-sm">{{ skillList.title }}</div>
            <Chip size="small" v-for="skill in skillList.items"
              class="mr-1 mb-1 print:p-2 bg-zinc-800 print:bg-transparent print:text-black print:border print:border-black">
              {{ skill }}
            </Chip>
          </div>
        </div>
      </div>
    </div>
  </UContainer>
</template>

<style>
@page {
  size: letter;
  margin: 0.55in;
}
</style>
