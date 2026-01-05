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
      'Building Mobile Apps (iOS & Android)',
      'Embedded Systems',
      'Building Desktop Apps',
      'IoT',
      'Microservices',
      'Unit testing',
      'E2E testing',
      'Product Development',
      'Progressive Web Apps',
      'Prototyping',
      'MPA',
      'SPA',
      'Jamstack',
      'Serverless',
      'Building integrations',
      'Web Services',
      'Data Extraction',
      'eCommerce',
    ],
  },
  {
    listTitle: "APIs I've integrated with",
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
      'OpenAI',
      'Hanko',
      'Microsoft Graph API',
    ],
  },
  {
    listTitle: "Backend tools I've used",
    listItems: ['Nuxt', 'TRPC', 'Express', 'Flask', 'Node', 'Nitro'],
  },
  {
    listTitle: "Datastores I've used",
    listItems: [
      'DynamoDB',
      'MySQL',
      'NoSQL',
      'SQLite',
      'PlanetScale',
      'Cloudflare D1',
      'Postgres',
    ],
  },
  {
    listTitle: "Frontend tools I've used",
    listItems: [
      'Tailwind CSS',
      'Vue',
      'NuxtUI',
      'Tauri (iOS, Android, & Desktop targets)',
      'React Native',
      'DaisyUI',
      'Oruga',
      'Vuetify',
      'Bootstrap',
      'Material Design',
      'SCSS',
      'UnoCSS',
      'Bulma',
      'Next.js',
      'React.js',
      'Shadcn',
      'Tanstack Query',
    ],
  },
  {
    listTitle: "Infrastructure I've used",
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
    listTitle: "Languages I've used",
    listItems: [
      'TypeScript',
      'JavaScript',
      'Rust',
      'Python',
      'HTML',
      'SQL',
      'Golang',
      'YAML',
      'XML',
    ],
  },
  {
    listTitle: "Tools I've used",
    listItems: [
      'Git',
      'NPM',
      'Yarn',
      'Bun',
      'pnpm',
      'Vite',
      'VSCode',
      'Neovim',
      'Docker',
      'Nix',
      'Terminal',
      'Jest',
      'Vitest',
      'Playwright',
      'GitHub',
      'GitLab',
      'Sentry',
    ],
  },
]
const workHistory = [
  {
    companyName:
      'Denari (funded AI startup) (2025-2025)',
    role: 'Data Engineer (Contract)',
    tldr: [
      'Independently built a greenfield MVP for a new product line',
      'Collaborated with technical and non-technical stakeholders',
      'Built a fully automated data ingestion and processing pipeline',
      'Created data visualization dashboard with single sign-on via Microsoft Entra',
    ],
    projects: [
      {
        projectName: 'Data ingestion pipeline MVP',
        tools: ['TypeScript', 'React', 'Next.js', 'WorkOS', 'Microsoft Graph API'],
        description: [
          `I built them a data ingestion pipeline product that calculated average incoming lead response times across the organization.
          Customer admins were able to sign in (SSO) via Microsoft Entra and grant access to their organization\'s inboxes.
          From there, the inbox data was ingested via the Microsoft Graph API, indexed, and dispatched to a work queue.
          The work queue then calculated average response times, created sentiment scores, filtered out internal communication, and had the LLM ingest their inboxes, messages, and threads for categorization.
          I provided regular demos of my progress and communicated with technical & non-technical stakeholders to explore the desired features and technical requirements.
          The completed pipeline was able to filter and categorize leads, customer follow-ups, internal communication, and spam.
          The Next.js/React dashboard integrated with WorkOS for internal stakeholder authentication and displayed data visualizations of the organization's response stats.`
        ],
      },
    ]
  },
  {
    companyName:
      'InternalStack (2024 - 2025) (Spinoff project from OrderDive)',
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
        description: [
          'I created a tiny server-side SDK',
          { href: 'https://github.com/internalstack/server' },
          'that lets developers define their internal apps with backend code and have it render for clients with full SSO/Directory Sync. The running process acts like a server. All communication occurs via WebSockets to allow real-time promise resolution from the end user to the SDK. The trickiest part of creating the SDK was making sure it would support multiple concurrent clients without having the ongoing session contexts become jumbled or criss-crossed. Once the SDK was finished, the user, under the hood,  basically interacted with a dedicated function call that only resolves once validated input is received, allowing for a very streamlined DX.',
        ],
      },
      {
        projectName: 'Envelope encryption microservice',
        tools: [
          'TypeScript',
          'Cloudflare D1',
          'Cloudflare Queues',
          'Cloudflare Workers',
        ],
        description: [
          'I built an experimental envelope encryption microservice. The microservice works similarly to AWS Secrets Manager. The spicy part of this project is that it runs entirely in the Cloudflare Worker runtime! The service automatically rotates the key encryption key (KEK) and the data encryption keys (DEKs) at regular intervals. To rotate a data encryption key, the data needs to be decrypted and re-encrypted using the new key. Keys are rotated in a scalable manner by adding rotation jobs to the Cloudflare queue, consuming the rotation job from the queue asynchronously, and storing the new data encryption key. This entire flow, from the queueing, the queue consumption, and the storage of the new key is all handled in a single Cloudflare Worker.',
          'It\'s code can be viewed here: ',
          { href: 'https://github.com/birdlavv/cloudflare-workers-envelope-encryption' }
        ],
      },
      {
        projectName: 'Authorization layer & Internal apps over WebSocket',
        tools: [
          'TypeScript',
          'Nuxt',
          'WorkOS',
          'TRPC',
          'SQLite',
          'Cloudflare Workers',
          'Cloudflare D1',
        ],
        description: [
          'I created a self-serve SaaS allowing users to sign up and subscribe to a usage-based service',
          { href: 'https://internalstack.com' },
          ". This SaaS acts as an authentication/authorization layer for customers' internal app users. It also functions to host and dynamically generate the internal app frontends. This project was built entirely on Cloudflare Workers, allowing for incredible scalability. The unique part of this SaaS was generating the frontends on the fly using data that is updated entirely via WebSockets in real-time. Everything from form validation, form submission, form fields to render, asynchronous events like autocomplete keystrokes, and resulting suggestions, all over WebSockets.",
        ],
      },
    ],
  },
  {
    companyName: 'CheetahBooking (2023 - 2024) (Co-founded)',
    role: 'Chief Technology Officer (CTO)',
    tldr: [
      'Built a B2B SaaS MVP on a very tiny budget',
      'Built an automated scheduling engine',
      'Built a very intuitive form builder',
      'Implemented our CI/CD pipeline with E2E test coverage',
      'Converted Figma designs into a pixel-perfect functional application',
    ],
    projects: [
      {
        projectName: 'SaaS MVP & Scheduling engine',
        tools: ['TypeScript', 'MySQL', 'Nuxt'],
        description: [
          "The software enabled business owners to sign up and create lead forms, booking forms, and appointment forms. It had payments and automatic scheduling out-of-the-box. The forms were generated and rendered at runtime based on the data points the business wanted to collect for each booking. After a booking was made, it was automatically added to the business's schedule. Timeslots were offered and consumed based on the SQL-backed scheduler I had built. The scheduler would offer timeslots based on discovered availability between the already booked appointments. My experience building the scheduling engine at OrderDive helped me avoid many common pitfalls when dealing with time.",
        ],
      },
    ],
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
      'Created AI/LLM-powered tools to help business owners to generate marketing copy'
    ],
    projects: [
      {
        projectName: 'White-label UI',
        tools: ['TypeScript'],
        description: [
          'I created a white-label component library so developers/agencies could securely style all components across their sub-merchant UIs. This pattern used CSS as a compile target and a flavor of TailwindCSS as the sandbox. This allowed for stylesheets to be dynamically generated (>200ms) and stored for fast static serving. This sandbox allowed every component to be customized and branded by untrusted third parties without requiring human review. If I were to reimplement this today, I would opt for a freeform stylesheet field combined with a strict Content-Security-Policy header now that they are better respected by browsers and that executable JS-in-CSS loopholes have faded.',
        ],
      },
      {
        projectName: 'Embedded Linux thermal printer',
        tools: ['TypeScript', 'Linux', 'Serverless'],
        description: [
          'I created an embedded Linux thermal printer to print restaurant tickets. The printer securely accepted sensitive data from our serverless cloud environment. Because thermal paper only has two colors, black and white, but no grayscale, images had to be fed through a dithering algorithm to allow for display on thermal paper. I succeeded in creating a microservice that dynamically resized and dithered all dynamic image data in the resource-constrained serverless environment. I then implemented this again in the browser environment providing a live dithered preview using HTML Canvas and the browser’s MediaDevices API to access the webcam. Print job authentication was done using asymmetric keys because the devices were in untrusted/hostile environments. I wrote the printer firmware and the cloud printing microservice in TypeScript.',
        ],
      },
      {
        projectName: 'Reservation microservice',
        tools: ['TypeScript', 'SQL', 'Serverless'],
        description: [
          'I made a reservation engine that took in a schedule and seating capacity parameters and would generate valid timeslots.',
          'If the schedule or capacity changed, the already-booked timeslots would be grandfathered in, and new timeslots would be regenerated around the new schedule, capacity, and pre-booked timeslots.',
          'Though this was challenging, I’m very happy with how this project turned out. It works across timezones, is immune to Daylight Savings Time, works in a resource-constrained serverless environment, and is very fast.',
        ],
      },
      {
        projectName: 'Restaurant dashboard',
        tools: ['Tailwind CSS', 'Nuxt', 'TRPC', 'Vue', 'MySQL'],
        description: [
          'I built a self-serve dashboard for restaurant managers to manage their ordering settings, schedule, and menu. The most challenging part of this project was building out the menu editor. The menu editor allowed owners to manage highly nested item modifiers, modifier options, and menu sections. The most difficult part was dialing in the UX so that it would be intuitive for restaurant owners to manipulate the highly nested data. Once the dust had settled, the UX was similar to that of a WYSIWYG editor that used page routes to express depth and had autocomplete to allow owners to share/inherit modifiers between items.',
        ],
      },
      {
        projectName: 'Restaurant ordering flow',
        tools: ['TypeScript', 'Vue', 'Nuxt'],
        description: [
          'I worked on a server-side-rendered (SSR) restaurant menu, bag, and checkout flow. This project was a ground-up rewrite using the newly betaed (at the time) Nuxt 3. All the menus and merchant data were sourced from our internal menu dashboard service or external 3rd party menu partner APIs. The project allowed multiple payment processors and needed a fully brandable UI that merchants could style. Merchants could set a unique branded link path that automatically leads to their menu.',
        ],
      },
    ],
  },
  {
    companyName: 'Personal projects',
    role: 'Software Engineer',
    tldr: [
      'Created & published an app built with React Native for cosplayers to trigger sound effects usings a concealed bluetooth device',
      'Created a desktop app (Linux, Windows, & Macos) and self-hostable server for syncing emulated retro game save files across devices (Looking to open source it soon)',
      'Created a system tray utility app in Golang (Go) for Macos to quickly find the server process that is blocking my development server port. The program finds the clogged port and kills the parent process.'
    ],
  },
]
const years = computed(() => new Date().getFullYear() - 2015)
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
          <a class="text-blue-400 underline" href="https://github.com/birdlavv/birdlaw-dev">View source on Github (This
            site was made with Nuxt 4 and Tailwind!)</a>
        </div>
        <div class="flex items-center">
          <UIcon name="i-lucide-folder-open" class="mr-2 print:hidden" />
          <NuxtLink class="text-blue-400 underline print:hidden" to="/portfolio">View portfolio</NuxtLink>
        </div>
      </div>
    </div>
    <div class="grid grid-cols-3">
      <div class="lg:col-span-2 col-span-3">
        <div class="mb-6 pb-6 mr-6 border-b-2 border-zinc-800">
          Below is a non-exhaustive list of some of the notable projects I've worked on.
          Each project description includes some technical decisions I made during the design and development process.
        </div>
        <div class="print:text-2xl font-bold text-4xl mb-6">Work history</div>
        <div v-for="job in workHistory" class="mb-16">
          <div class="text-2xl font-bold mb-2">{{ job.companyName }}</div>
          <Chip size="small"
            class="mb-4 bg-indigo-600 print:bg-transparent print:text-black print:border print:border-black">{{ job.role
            }}</Chip>
          <div class="print:p-0 print:border-none mb-6 border-white rounded-lg border p-6 mr-6 print:break-inside-avoid print:border-black">
            <Chip size="small"
              variant="outline"
              class="mb-2 bg-indigo-600 print:bg-transparent print:text-black print:border print:border-black">
              Highlights</Chip>
            <ul class="list-disc pl-4 mb-4">
              <li v-for="item of job.tldr">{{ item }}</li>
            </ul>
          </div>
          <div v-for="project in job.projects" class="mb-12 pl-8 border-l-2 border-zinc-800 print:border-black">
            <div class="mb-2 print:text-sm text-xl font-bold">{{ project.projectName }}</div>
            <div class="mb-2">
              <Chip size="small" v-for="tool in project.tools"
                class="mr-1 mb-1 bg-zinc-800 print:bg-transparent print:text-black print:border print:border-black">
                {{ tool }}
              </Chip>
            </div>
            <div class="lg:mr-16 mb-4 print:mb-1 print:text-xs">
              <span v-for="chunk in project.description">
                <span v-if="typeof chunk === 'object' && 'href' in chunk"
                  class="text-blue-500 underline mr-[.5rem] print:text-black">
                  <a class="inline-flex items-center print:text-black" :href="chunk.href" target="_blank">
                    <span class="mr-1">{{ chunk.href }}</span>
                    <UIcon name="i-lucide-external-link" class="print:hidden" />
                  </a>
                </span>
                <span v-if="typeof chunk === 'string'" class="mr-[.5rem]">{{ chunk }}</span>
              </span>
            </div>
          </div>
        </div>
      </div>
      <div class="lg:col-span-1 col-span-3">
        <div v-for="skillList in skillLists" class="mb-4">
          <div class="opacity-50 font-bold mb-2 text-sm">{{ skillList.listTitle }}</div>
          <Chip size="regular" v-for="skill in skillList.listItems"
            class="mr-1 mb-1 bg-zinc-800 print:bg-transparent print:text-black print:border print:border-black">
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
