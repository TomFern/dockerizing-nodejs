FROM node:16.15-alpine3.14
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY src/package.json src/package-lock.json .
RUN npm install
COPY src/ .
# RUN npm install
# RUN npm install --save pm2
#RUN chown -R app /opt/app
#USER app
EXPOSE 3000
CMD [ "npm", "start"]
