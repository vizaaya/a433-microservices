FROM node:14
LABEL org.opencontainers.image.source="https://github.com/vizaaya/a433-microservices"
WORKDIR /app
COPY . .
ENV NODE_ENV=production 
ENV DB_HOST=item-db
RUN npm install --production --unsafe-perm && npm run build
EXPOSE 8080
CMD [ "npm" , "start"]