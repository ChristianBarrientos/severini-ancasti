### STAGE 1: Build ###
FROM node:12.7-alpine AS build
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build
#EXPOSE 4200
# Serve the app
CMD ["npm", "start"]
### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/app/dist/anc-pensar /usr/share/nginx/html
#RUN ng serve --host 0.0.0.0 --poll=500
