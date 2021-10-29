FROM node:14 as base

WORKDIR /src
COPY package*.json ./
COPY ./src ./src

FROM base as development
EXPOSE 3000
RUN npm install
CMD ["npm","run", "dev"]

FROM base as production
EXPOSE 8080
RUN npm ci && npm run build
CMD ["npm","start"]
