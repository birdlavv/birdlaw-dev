<script lang="ts" setup>
const props = defineProps<{
  size: 'regular' | 'small'
}>()
</script>
<template>
  <div
    class=" inline-block"
    :class="{
      'p-2 px-4': props.size === 'regular',
      'p-1 px-2 text-xs': props.size === 'small'
    }"
  >
    <slot/>
  </div>
</template>