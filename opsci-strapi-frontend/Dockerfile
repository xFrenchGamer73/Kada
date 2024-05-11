FROM node:20
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

WORKDIR /opt/
COPY package.json yarn.lock ./
ENV PATH /opt/node_modules/.bin:$PATH
RUN yarn config set network-timeout 600000 -g && yarn install

WORKDIR /opt/app
COPY . .
RUN yarn build
ENV STRAPI_APP_BACKEND_URL=http://localhost:1337
EXPOSE 5173
CMD ["yarn", "dev","--host","0.0.0.0","--port","5173"]