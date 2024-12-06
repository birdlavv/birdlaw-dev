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
      'Design Systems',
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
    listTitle: 'APIs I\'ve integrated with',
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
      'SQLite',
      'PlanetScale',
      'Cloudflare D1',
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
    companyName: 'InternalStack (2024 - Present)',
    role: 'Software Engineer',
    tldr: [
      'Built a DX-focused SDK in TypeScript',
      'Built a fully automated envelope encryption microservice',
      'Built a B2B SaaS platform with billing, SSO, and developer portal',
      'Created in-depth developer-facing documentation',
    ],
    projects: [
      {
        projectName: 'TypeScript SDK',
        tools: ['TypeScript'],
        description: ['I created a tiny server-side SDK', { href: 'https://github.com/internalstack/server' }, 'that lets developers define their internal apps with backend code and have it render for clients with full SSO/Directory Sync. The running process acts like a server. All communication occurs via WebSockets to allow real-time promise resolution from the end user to the SDK. The trickiest part of creating the SDK was making sure it would support multiple concurrent clients without having the ongoing session contexts become jumbled or criss-crossed. Once the SDK was finished, the user, under the hood,  basically interacted with a dedicated function call that only resolves once validated input is received, allowing for a very streamlined DX.']
      },
      {
        projectName: 'Envelope encryption microservice',
        tools: ['TypeScript', 'Cloudflare D1', 'Cloudflare Queues', 'Cloudflare Workers'],
        description: ['I built an envelope encryption microservice. The microservice works similarly to AWS Secrets Manager. The spicy part of this project is that it runs entirely in the Cloudflare Worker runtime! The service automatically rotates the key encryption key (KEK) and the data encryption keys (DEKs) at regular intervals. To rotate a data encryption key, the data needs to be decrypted and re-encrypted using the new key. Keys are rotated in a scalable manner by adding rotation jobs to the Cloudflare queue, consuming the rotation job from the queue asynchronously, and storing the new data encryption key. This entire flow, from the queueing, the queue consumption, and the storage of the new key is all handled in a single Cloudflare Worker.']
      },
      {
        projectName: 'Authorization layer & Internal apps over WebSocket',
        tools: ['TypeScript', 'Nuxt', 'WorkOS', 'TRPC', 'SQLite', 'Cloudflare Workers', 'Cloudflare D1'],
        description: ['I created a self-serve SaaS allowing users to sign up and subscribe to a usage-based service', { href: 'https://internalstack.com'}, '. This SaaS acts as an authentication/authorization layer for customers\' internal app users. It also functions to host and dynamically generate the internal app frontends. This project was built entirely on Cloudflare Workers, allowing for incredible scalability. The unique part of this SaaS was generating the frontends on the fly using data that is updated entirely via WebSockets in real-time. Everything from form validation, form submission, form fields to render, asynchronous events like autocomplete keystrokes, and resulting suggestions, all over WebSockets.']
      },
    ]
  },
  {
    companyName: 'Cheetah Booking (2023 - 2024) (Co-founded)',
    role: 'Chief Technology Officer (CTO)',
    tldr: [
      'Built a B2B SaaS on a very tiny budget',
      'Built an automated scheduling engine',
      'Built a very intuitive form builder',
    ],
    projects: [
      {
        projectName: 'SaaS & Scheduling engine',
        tools: ['TypeScript', 'MySQL', 'Nuxt'],
        description: ['The software enabled business owners to sign up and create lead forms, booking forms, and appointment forms. It had payments and automatic scheduling out-of-the-box. The forms were generated and rendered at runtime based on the data points the business wanted to collect for each booking. After a booking was made, it was automatically added to the business\'s schedule. Timeslots were offered and consumed based on the SQL-backed scheduler I had built. The scheduler would offer timeslots based on discovered availability between the already booked appointments. My experience building the scheduling engine at OrderDive helped me avoid many common pitfalls when dealing with time.']
      },
    ]
  },
  {
    companyName: 'OrderDive  (2017 - Present) (Founded)',
    role: 'Software Engineer',
    tldr: [
      'Created a cloud connected ticket printer',
      'Created a sandboxed design system that allowed for in-depth white-labeling',
      'Provisioned and maintained on-prem MQTT broker nodes',
      'Created a reservation microservice with dynamic schedule capacity and daylight-savings immunity',
      'Created a restaurant owner dashboard and menu editor',
      'Created the customer facing restaurant online ordering flow',
    ],
    projects: [
      {
        projectName: 'White-label UI',
        tools: ['TypeScript'],
        description: ['I created a white-label component library so developers/agencies could securely style all components across their sub-merchant UIs. This pattern used CSS as a compile target and a flavor of TailwindCSS as the sandbox. This allowed for stylesheets to be dynamically generated (>200ms) and stored for fast static serving. This sandbox allowed every component to be customized and branded by untrusted third parties without requiring human review. If I were to reimplement this today, I would opt for a freeform stylesheet field combined with a strict Content-Security-Policy header now that they are better respected by browsers and that executable JS-in-CSS loopholes have faded.']
      },
      {
        projectName: 'Embedded Linux thermal printer',
        tools: ['TypeScript', 'Linux', 'Serverless'],
        description: ['I created an embedded Linux thermal printer to print restaurant tickets. The printer securely accepted sensitive data from our serverless cloud environment. Because thermal paper only has two colors, black and white, but no grayscale, images had to be fed through a dithering algorithm to allow for display on thermal paper. I succeeded in creating a microservice that dynamically resized and dithered all dynamic image data in the resource-constrained serverless environment. I then implemented this again in the browser environment providing a live dithered preview using HTML Canvas and the browser’s MediaDevices API to access the webcam. Print job authentication was done using asymmetric keys because the devices were in untrusted/hostile environments. I wrote the printer firmware and the cloud printing microservice in TypeScript.']
      },
      {
        projectName: 'Reservation microservice',
        tools: ['TypeScript', 'SQL', 'Serverless'],
        description: ['I made a reservation engine that took in a schedule and seating capacity parameters and would generate valid timeslots.', 'If the schedule or capacity changed, the already-booked timeslots would be grandfathered in, and new timeslots would be regenerated around the new schedule, capacity, and pre-booked timeslots.', 'Though this was challenging, I’m very happy with how this project turned out. It works across timezones, is immune to Daylight Savings Time, works in a resource-constrained serverless environment, and is very fast.']
      },
      {
        projectName: 'Restaurant dashboard',
        tools: ['Tailwind CSS', 'Nuxt', 'TRPC', 'Vue', 'MySQL'],
        description: ['I built a self-serve dashboard for restaurant managers to manage their ordering settings, schedule, and menu. The most challenging part of this project was building out the menu editor. The menu editor allowed owners to manage highly nested item modifiers, modifier options, and menu sections. The most difficult part was dialing in the UX so that it would be intuitive for restaurant owners to manipulate the highly nested data. Once the dust had settled, the UX was similar to that of a WYSIWYG editor that used page routes to express depth and had autocomplete to allow owners to share/inherit modifiers between items.']
      },
      {
        projectName: 'Restaurant ordering flow',
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
          <div class="flex items-center">
            <UIcon name="i-lucide-code" class="mr-2" />
            <a class="text-blue-400 underline" href="https://github.com/birdlavv/birdlaw-dev">View source on Github (This site was made with Nuxt 3 and Tailwind!)</a>
          </div>
        </div>
      </div>
      <div class="grid grid-cols-3">
        <div class="lg:col-span-2 col-span-3">
          <div class="mb-6 pb-6 mr-6 border-b-2 border-zinc-800">
            Below is a non-exhaustive list of some of the notable projects I've worked on.
            Each project description includes some technical decisions I made during the design and development process.
          </div>
          <div class="font-bold text-4xl mb-6">Work history</div>
          <div v-for="job in workHistory" class="mb-16">
            <Chip size="small" class="bg-indigo-600 mb-2">{{ job.role }}</Chip>
            <div class="text-2xl font-bold mb-4">{{ job.companyName }}</div>
            <div class="mb-6 border-white rounded-lg border p-6 mr-6">
              <Chip size="small" class="bg-indigo-600 mb-2">Highlights</Chip>
              <ul class="list-disc pl-4 mb-4">
                <li v-for="item of job.tldr">{{ item }}</li>
              </ul>
            </div>
            <div v-for="project in job.projects" class="mb-12 pl-8 border-l-2 border-zinc-800">
              <div class="mb-2 text-xl font-bold">{{ project.projectName }}</div>
              <div class="mb-2">
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