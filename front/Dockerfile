FROM node:alpine as builder
RUN mkdir -p /app-front && chown -R node:node /app-front
WORKDIR /app-front
COPY package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
ENV APP_BACKEND_URL='http://localhost:3000/api/v1'
#RUN npm run build
RUN npm start

FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app-front/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
