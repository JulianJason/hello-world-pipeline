FROM node:22-alpine AS main

ENV NODE_ENV production
WORKDIR /usr/src/app/

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY src src

USER node
CMD ["npm", "start"]