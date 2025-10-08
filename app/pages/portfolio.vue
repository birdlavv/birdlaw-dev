<template>
  <div>
    <UContainer>
      <UCard class="mb-6" variant="subtle">
        <template #header>
          <div class="text-6xl font-bold">
            Portfolio
          </div>
        </template>
        <ULink to="/resume">View resume</ULink>
      </UCard>
      <USeparator class="mb-1 w-[80%]"/>
      <USeparator class="mb-1 w-80"/>
      <USeparator class="mb-1 w-50"/>
      <USeparator class="mb-1 w-40"/>
      <USeparator class="mb-1 w-30"/>
      <USeparator class="mb-6 w-20"/>
      <UCard class="mb-4" variant="subtle">
        <template #header>
          <div class="text-2xl font-bold">
            Landing pages
          </div>
        </template>
        <div class="mb-4"><ULink href="https://orderdive.com">https://orderdive.com</ULink></div>
        <div><ULink href="https://internalstack.com">https://internalstack.com</ULink></div>
      </UCard>
      <UCard class="mb-6" variant="subtle">
        <template #header>
          <div class="text-2xl font-bold">
            Fullstack SaaS demo
          </div>
        </template>

        <iframe
          class="rounded-xl"
          src="https://drive.google.com/file/d/1_TaVlnDrS0jMMqFA5FPt6e8VNqP5XjbF/preview"
          title="YouTube video player"
          frameborder="0"
          allow="autoplay;"
          allowfullscreen
          style="aspect-ratio: 16/9;width: 400px;"
        ></iframe>
      </UCard>
      <USeparator class="mb-1 w-[80%]"/>
      <USeparator class="mb-1 w-80"/>
      <USeparator class="mb-1 w-50"/>
      <USeparator class="mb-1 w-40"/>
      <USeparator class="mb-1 w-30"/>
      <USeparator class="mb-6 w-20"/>
    </UContainer>
  </div>
</template>
