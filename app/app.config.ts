export default defineAppConfig({
  ui: {
    colors: {
      primary: 'green',
      neutral: 'zinc',
    },
    link: {
      base: 'underline underline-offset-5',
      variants: {
        active: {
          true: 'text-blue-400',
          false: 'text-blue-400'
        },
      }
    }
  },
})
