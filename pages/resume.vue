<script lang="ts" setup>
definePageMeta({
  layout: 'default',
})
const skillLists = [
  {
    listTitle: 'Skillsets',
    listItems: [
      'Systems Architecture',
      'Cloud Architecture',
      'Design systems',
      'Embedded Systems',
      'IoT',
      'Microservices',
      'Product Development',
      'Progressive Web Apps',
      'Prototyping',
      'MPA',
      'SPA',
      'Serverless',
      'Web Services',
      'Data Extraction',
      'eCommerce',
    ],
  },
  {
    listTitle: 'APIs',
    listItems: [
      'Stripe',
      'Twilio',
      'Mapbox',
      'GoogleMaps API',
      'Pusher',
      'Stytch',
      'Auth0',
      'Magic',
    ],
  },
  {
    listTitle: 'Backend stack',
    listItems: [
      'Nuxt.js',
      'TRPC',
      'Express',
      'Flask',
      'Node.js',
      'Prisma',
    ],
  },
  {
    listTitle: 'Datastores',
    listItems: [
      'DynamoDB',
      'MySQL',
      'NoSQL',
    ],
  },
  {
    listTitle: 'Frontend stack',
    listItems: [
      'Tailwind CSS',
      'Vue.js',
      'DaisyUI',
      'Oruga',
      'Vuetify',
      'Bootstrap',
      'Material Design',
      'SCSS',
      'UnoCSS',
      'Bulma',
    ],
  },
  {
    listTitle: 'Infrastructure',
    listItems: [
      'AWS IAM',
      'AWS Lambda',
      'AWS S3',
      'Cloudflare',
      'DigitalOcean',
      'Heroku',
      'Netlify',
      'AWS Secrets Manager',
      'Doppler',
    ],
  },
  {
    listTitle: 'Languages',
    listItems: [
      'TypeScript',
      'JavaScript',
      'Python',
      'HTML',
      'SQL',
    ],
  },
  {
    listTitle: 'Libraries',
    listItems: [
      'Zod',
      'FormKit',
      'Luxon',
      'Moment.js',
      'Sequelize',
      'Telegraf',
      'Lodash',
    ],
  },
  {
    listTitle: 'Operating systems',
    listItems: [
      'Linux',
      'Ubuntu',
      'Fedora',
      'OSX',
      'Raspberry Pi OS',
    ],
  },
  {
    listTitle: 'Standards',
    listItems: [
      'ES7+',
      'HTTP',
      'JSON',
      'JWT',
      'REST',
      'Stellar',
      'WebSocket',
    ],
  },
  {
    listTitle: 'Tools',
    listItems: [
      'Git',
      'NPM',
      'Yarn',
      'Vite',
      'VSCode',
      'Terminal',
      'Gimp',
      'Jest',
      'Vitest',
      'GitHub',
      'GitLab',
      'Sentry',
    ],
  },
]
const workHistory = [
  {
    companyName: 'OrderDive',
    title: 'Software Engineer, Solutions Architect',
    projects: [
      {
        title: 'White-label UI',
        roles: ['Full-Stack Engineer'],
        tools: ['Typescript'],
        description: ['I created a white-label component library so developers/agencies could securely style all components across their sub-merchant UIs. This pattern used CSS as a compile target and a flavor of TailwindCSS as the sandbox. This allowed for stylesheets to be dynamically generated (>200ms) and stored for fast static serving. This sandbox allowed every component to be customized and branded by untrusted third parties without requiring human review. If I were to reimplement this today, I would opt for a strict Content-Security-Policy header now that they are better respected by browsers and that executable JS-in-CSS loopholes have faded.']
      },
      {
        title: 'Embedded Linux Thermal Printer',
        roles: ['Full-Stack Engineer', 'Solutions Architect'],
        tools: ['TypeScript', 'Linux', 'Serverless'],
        description: ['I created an embedded Linux thermal printer to print restaurant tickets. The printer securely accepted sensitive data from our serverless cloud environment. Because thermal paper only has two colors, black and white, but no grayscale, images had to be fed through a dithering algorithm to allow for display on thermal paper. I succeeded in creating a microservice that dynamically resized and dithered all dynamic image data in the resource-constrained serverless environment. I then implemented this again in the browser environment providing a live dithered preview using HTML Canvas and the browser’s MediaDevices API to access the webcam. Print job authentication was done using asymmetric keys because the devices were in untrusted/hostile environments. I wrote the printer firmware and the cloud printing microservice in Typescript.']
      },
      {
        title: 'Reservation Microservice',
        roles: ['Backend Engineer'],
        tools: ['TypeScript', 'SQL', 'Serverless'],
        description: ['I made a reservation engine that took in a schedule and seating capacity parameters and would generate valid timeslots.', 'If the schedule or capacity changed, the already-booked timeslots would be grandfathered in, and new timeslots would be regenerated around the new schedule, capacity, and pre-booked timeslots.', 'Though this was challenging, I’m very happy with how this project turned out. It works across timezones, is immune to Daylight Savings Time, works in a resource-constrained serverless environment, and is very fast.']
      },
      {
        title: 'Restaurant Dashboard',
        roles: ['Full-Stack Engineer'],
        tools: ['Node.js', 'Tailwind CSS', 'Nuxt.js'],
        description: ['I made a reservation engine that took in a schedule and seating capacity parameters and would generate valid timeslots.', 'If the schedule or capacity changed, the already-booked timeslots would be grandfathered in, and new timeslots would be regenerated around the new schedule, capacity, and pre-booked timeslots.', 'Though this was challenging, I’m very happy with how this project turned out. It works across timezones, is immune to Daylight Savings Time, works in a resource-constrained serverless environment, and is very fast.']
      },
      {
        title: 'Restaurant Ordering Flow',
        roles: ['Full-Stack Engineer'],
        tools: ['TypeScript', 'Vue.js', 'Nuxt.js'],
        description: ['I worked on a server-side-rendered (SSR) restaurant menu, bag, and checkout flow. This project was a ground-up rewrite using the newly betaed Nuxt 3. All the menus and merchant data were sourced from our internal menu dashboard service or external 3rd party menu partner APIs. The project allowed multiple payment processors and needed a fully brandable UI that merchants could style. Merchants could set a unique branded link path that automatically leads to their menu.']
      },
    ]
  }
]
const years = computed(() => new Date().getFullYear() - 2015)
</script>
<template>
  <div class="p-8 bg-zinc-700 text-white">
    <div class="flex sm:flex-row flex-col xs:flex-nowrap items-center mb-16">
      <img class="shadow-lg inline-block rounded-full sm:w-40 w-20 mr-4" src="/image.png">
      <div>
        <div class="text-2xl font-bold">
          Alex Fong
        </div>
        <div class="mb-4">Fullstack software engineer with deep experience with Nuxt.js, Vue.js, Typescript, and designing scalable systems from scratch.</div>
        
        <div class="flex items-center">
          <Icon name="mdi:map-marker" class="mr-2" />
          <div>Greater Madison Area, Wisconsin, USA</div>
        </div>
        <div class="flex items-center">
          <Icon name="mdi:timer-sand-complete" class="mr-2" />
          <div>{{ years }} years of experience</div>
        </div>
        <div class="flex items-center">
          <Icon name="mdi:email" class="mr-2" />
          <a class="text-blue-400 underline" href="mailto:alex@birdlaw.dev">alex@birdlaw.dev</a>
        </div>
        <div class="flex items-center">
          <Icon name="mdi:github" class="mr-2" />
          <a class="text-blue-400 underline" href="https://github.com/birdlavv">https://github.com/birdlavv</a>
        </div>
      </div>
    </div>
    <div class="grid grid-cols-3">
      <div class="lg:col-span-2 col-span-3">
        <Chip size="regular" class="bg-zinc-600 mb-4">Work history</Chip>
        <div v-for="job in workHistory" class="mb-24">
          <div class="opacity-50 font-bold mb-4">{{ job.companyName }},  {{ job.title }}</div>
          <div v-for="project in job.projects" class="mb-16 ml-8">
            <div class="text-2xl font-bold mb-2">{{ project.title }}</div>
            <div class="mb-2">
              <Chip size="small" class="bg-indigo-600 mr-1 mb-1" v-for="role in project.roles">{{ role }}</Chip>
              <Chip size="small" v-for="tool in project.tools" class="mr-1 mb-1 bg-zinc-800">
                {{ tool }}
              </Chip>
            </div>
            <div v-for="chunk in project.description" class="lg:mr-16 mb-4">{{ chunk }}</div>
          </div>
        </div>
      </div>
      <div class="lg:col-span-1 col-span-3">
        <Chip size="regular" class="bg-zinc-600 mb-4">Skills</Chip>
        <div v-for="skillList in skillLists" class="mb-4">
          <div class="opacity-50 font-bold">{{ skillList.listTitle }}</div>
          <Chip size="regular" v-for="skill in skillList.listItems" class="mr-1 mb-1 bg-zinc-800">
            {{ skill }}
          </Chip>
        </div>
      </div>
    </div>
  </div>
</template>