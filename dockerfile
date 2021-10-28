FROM node:14 as base

WORKDIR /src
COPY package*.json ./

FROM base as development
EXPOSE 3000
COPY ./src ./src
RUN npm install
CMD ["npm","run", "dev"]

FROM base as production
EXPOSE 8080
RUN npm ci
COPY ./dist ./dist
CMD ["npm","start"]
