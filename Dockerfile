# stage 1
FROM node:14.15.0-alpine3.10 as exp-ng-pwa
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

# stage 2
FROM nginx:alpine
COPY --from=exp-ng-pwa /app/dist/exp-ng-pwa /usr/share/nginx/html
