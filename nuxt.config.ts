// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  modules: [
    '@nuxt/ui',
    '@nuxtjs/tailwindcss',
  ],
  extends: ['@nuxt/ui-pro'],
  compatibilityDate: '2024-10-15',
  colorMode: {
    preference: 'dark'
  },
})