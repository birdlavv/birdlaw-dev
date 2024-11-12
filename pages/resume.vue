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
      'Building Mobile Apps (iOS & Android)',
      'Building Desktop Apps',
      'IoT',
      'Microservices',
      'Product Development',
      'Progressive Web Apps',
      'Prototyping',
      'MPA',
      'SPA',
      'Jamstack',
      'Serverless',
      'Web Services',
      'Data Extraction',
      'eCommerce',
    ],
  },
  {
    listTitle: 'APIs I\'ve used',
    listItems: [
      'Stripe',
      'Twilio',
      'Mapbox',
      'GoogleMaps API',
      'Pusher',
      'Stytch',
      'Auth0',
      'Magic',
      'WorkOS',
      'Hanko',
    ],
  },
  {
    listTitle: 'Backend tools I\'ve used',
    listItems: [
      'Nuxt',
      'TRPC',
      'Express',
      'Flask',
      'Node',
    ],
  },
  {
    listTitle: 'Datastores I\'ve used',
    listItems: [
      'DynamoDB',
      'MySQL',
      'NoSQL',
    ],
  },
  {
    listTitle: 'Frontend tools I\'ve used',
    listItems: [
      'Tailwind CSS',
      'Vue',
      'DaisyUI',
      'Oruga',
      'Vuetify',
      'Bootstrap',
      'Material Design',
      'SCSS',
      'UnoCSS',
      'Bulma',
      'NuxtUI',
    ],
  },
  {
    listTitle: 'Infrastructure I\'ve used',
    listItems: [
      'Cloudflare Durable Objects',
      'Cloudflare Workers',
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
    listTitle: 'Languages I\'ve used',
    listItems: [
      'TypeScript',
      'JavaScript',
      'Python',
      'HTML',
      'SQL',
      'YAML',
      'XML',
    ],
  },
  {
    listTitle: 'Libraries I\'ve used',
    listItems: [
      'Zod',
      'FormKit',
      'Luxon',
      'Drizzle',
      'H3',
      'Prisma',
      'Nitro',
      'Lodash',
    ],
  },
  {
    listTitle: 'Operating systems I\'ve used',
    listItems: [
      'Linux',
      'Ubuntu',
      'Fedora',
      'OSX',
      'Raspberry Pi OS',
    ],
  },
  {
    listTitle: 'Tools I\'ve used',
    listItems: [
      'Git',
      'NPM',
      'Yarn',
      'Bun',
      'pnpm',
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
    companyName: 'InternalStack',
    title: 'Software Engineer, Solutions Architect',
    projects: [
      {
        title: 'TypeScript SDK',
        roles: ['Software Engineer'],
        tools: ['TypeScript'],
        description: ['I created a tiny server-side SDK', { href: 'https://github.com/internalstack/server' }, 'that lets developers define their internal apps with backend code and have it render for clients with full SSO/Directory Sync. The running process acts like a server. All communication occurs via WebSockets to allow real-time promise resolution from the end user to the SDK. The trickiest part of creating the SDK was making sure it would support multiple concurrent clients without having the ongoing session contexts become jumbled or criss-crossed. Once the SDK was finished, the user, under the hood,  basically interacted with a dedicated function call that only resolves once validated input is received, allowing for a very streamlined DX.']
      },
      {
        title: 'Authorization layer & Internal apps over WebSocket',
        roles: ['Software Engineer'],
        tools: ['TypeScript', 'Nuxt', 'WorkOS', 'TRPC'],
        description: ['I created a self-serve SaaS allowing users to sign up and subscribe to a usage-based service', { href: 'https://internalstack.com'}, '. This SaaS acts as an authentication/authorization layer for customers\' internal app users. It also functions to host and dynamically generate the internal app frontends. This project was built entirely on Cloudflare Workers, allowing for incredible scalability. The unique part of this SaaS was generating the frontends on the fly using data that is updated entirely via WebSockets in real-time. Everything from form validation, form submission, form fields to render, asynchronous events like autocomplete keystrokes, and resulting suggestions, all over WebSockets.']
      },
    ]
  },
  {
    companyName: 'OrderDive',
    title: 'Software Engineer, Solutions Architect',
    projects: [
      {
        title: 'White-label UI',
        roles: ['Full-Stack Engineer'],
        tools: ['TypeScript'],
        description: ['I created a white-label component library so developers/agencies could securely style all components across their sub-merchant UIs. This pattern used CSS as a compile target and a flavor of TailwindCSS as the sandbox. This allowed for stylesheets to be dynamically generated (>200ms) and stored for fast static serving. This sandbox allowed every component to be customized and branded by untrusted third parties without requiring human review. If I were to reimplement this today, I would opt for a freeform stylesheet field combined with a strict Content-Security-Policy header now that they are better respected by browsers and that executable JS-in-CSS loopholes have faded.']
      },
      {
        title: 'Embedded Linux Thermal Printer',
        roles: ['Full-Stack Engineer', 'Solutions Architect'],
        tools: ['TypeScript', 'Linux', 'Serverless'],
        description: ['I created an embedded Linux thermal printer to print restaurant tickets. The printer securely accepted sensitive data from our serverless cloud environment. Because thermal paper only has two colors, black and white, but no grayscale, images had to be fed through a dithering algorithm to allow for display on thermal paper. I succeeded in creating a microservice that dynamically resized and dithered all dynamic image data in the resource-constrained serverless environment. I then implemented this again in the browser environment providing a live dithered preview using HTML Canvas and the browser’s MediaDevices API to access the webcam. Print job authentication was done using asymmetric keys because the devices were in untrusted/hostile environments. I wrote the printer firmware and the cloud printing microservice in TypeScript.']
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
        tools: ['Node', 'Tailwind CSS', 'Nuxt', 'TRPC'],
        description: ['I made a reservation engine that took in a schedule and seating capacity parameters and would generate valid timeslots.', 'If the schedule or capacity changed, the already-booked timeslots would be grandfathered in, and new timeslots would be regenerated around the new schedule, capacity, and pre-booked timeslots.', 'Though this was challenging, I’m very happy with how this project turned out. It works across timezones, is immune to Daylight Savings Time, works in a resource-constrained serverless environment, and is very fast.']
      },
      {
        title: 'Restaurant Ordering Flow',
        roles: ['Full-Stack Engineer'],
        tools: ['TypeScript', 'Vue', 'Nuxt'],
        description: ['I worked on a server-side-rendered (SSR) restaurant menu, bag, and checkout flow. This project was a ground-up rewrite using the newly betaed Nuxt 3. All the menus and merchant data were sourced from our internal menu dashboard service or external 3rd party menu partner APIs. The project allowed multiple payment processors and needed a fully brandable UI that merchants could style. Merchants could set a unique branded link path that automatically leads to their menu.']
      },
    ]
  }
]
const years = computed(() => new Date().getFullYear() - 2015)
</script>
<template>
  <UContainer>
    <div style="border-image: linear-gradient(to bottom, #27272a 0%, #27272a00 5%) 1;" class="border-[.5rem] sm:border-[1rem] p-[1rem] sm:p-[2rem]">
      <div class="flex sm:flex-row flex-col xs:flex-nowrap items-center mb-16">
        <img class="shadow-lg inline-block rounded-full sm:w-40 w-20 sm:mr-4" src="/image.png">
        <div>
          <div class="text-2xl font-bold text-center sm:text-left mb-4">
            Alex Fong
          </div>
          <div class="mb-4 max-w-[28rem]">Fullstack software engineer with deep experience with Nuxt, Vue, TypeScript, and designing scalable systems from scratch.</div>
          <div class="flex items-center">
            <UIcon name="i-lucide-map-pin" class="mr-2" />
            <div>Greater Madison Area, Wisconsin, USA</div>
          </div>
          <div class="flex items-center">
            <UIcon name="i-lucide-hourglass" class="mr-2" />
            <div>{{ years }} years of experience</div>
          </div>
          <div class="flex items-center">
            <UIcon name="i-lucide-mail" class="mr-2" />
            <a class="text-blue-400 underline" href="mailto:alex@birdlaw.dev">alex@birdlaw.dev</a>
          </div>
          <div class="flex items-center">
            <UIcon name="i-lucide-github" class="mr-2" />
            <a class="text-blue-400 underline" href="https://github.com/birdlavv">https://github.com/birdlavv</a>
          </div>
        </div>
      </div>
      <div class="grid grid-cols-3">
        <div class="lg:col-span-2 col-span-3">
          <UBadge variant="subtle" class="bg-zinc-600 mb-4">Work history</UBadge>
          <div v-for="job in workHistory" class="mb-24">
            <div class="opacity-50 font-bold mb-4">{{ job.companyName }},  {{ job.title }}</div>
            <div v-for="project in job.projects" class="mb-16 pl-8 border-l-2 border-zinc-800">
              <div class="text-2xl font-bold mb-2">{{ project.title }}</div>
              <div class="mb-2">
                <Chip size="small" class="bg-indigo-600 mr-1 mb-1" v-for="role in project.roles">{{ role }}</Chip>
                <Chip size="small" v-for="tool in project.tools" class="mr-1 mb-1 bg-zinc-800">
                  {{ tool }}
                </Chip>
              </div>
              <div class="lg:mr-16 mb-4">
                <span v-for="chunk in project.description">
                  <span v-if="typeof chunk === 'object' && 'href' in chunk" class="text-blue-500 underline mr-[.5rem]">
                    <a class="inline-flex items-center" :href="chunk.href" target="_blank">
                      <span class="mr-1">{{ chunk.href }}</span>
                      <UIcon name="i-lucide-external-link"/>
                    </a>
                  </span>
                  <span v-if="typeof chunk === 'string'" class="mr-[.5rem] ">{{ chunk }}</span>
                </span>
              </div>
            </div>
          </div>
        </div>
        <div class="lg:col-span-1 col-span-3">
          <UBadge variant="subtle" class="bg-zinc-600 mb-4">Skills</UBadge>
          <div v-for="skillList in skillLists" class="mb-4">
            <div class="opacity-50 font-bold mb-2 text-sm">{{ skillList.listTitle }}</div>
            <Chip size="regular" v-for="skill in skillList.listItems" class="mr-1 mb-1 bg-zinc-800">
              {{ skill }}
            </Chip>
          </div>
        </div>
      </div>
    </div>
  </UContainer>
</template>