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
        <div class="mb-4"><ULink to="https://orderdive.com" target="_blank">https://orderdive.com</ULink></div>
        <div><ULink to="https://internalstack.com" target="_blank">https://internalstack.com</ULink></div>
      </UCard>
      <UCard class="mb-6" variant="subtle">
        <template #header>
          <div class="text-2xl font-bold">
            Fullstack SaaS demo
          </div>
        </template>
        <ULink to="https://drive.google.com/file/d/1_TaVlnDrS0jMMqFA5FPt6e8VNqP5XjbF" external target="_blank">
          Quick video demo
        </ULink>
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
