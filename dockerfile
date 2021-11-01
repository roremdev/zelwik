FROM node:14 as base

WORKDIR /src
COPY package*.json ./
COPY ./src ./src

FROM base as development
RUN npm install
CMD ["npm","run", "dev"]

FROM base as production
RUN npm ci && npm run build
CMD ["npm","start"]
