FROM mcr.microsoft.com/playwright:v1.52.0-noble AS base
WORKDIR /app

COPY package.json package-lock.json ./

FROM base AS deps
RUN npm install

FROM deps AS run
COPY . .

ENV NODE_OPTIONS=--max_old_space_size=4096
ENTRYPOINT npm run test-ci