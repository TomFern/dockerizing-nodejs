FROM registry.semaphoreci.com/node:16
RUN mkdir -p /opt/app
WORKDIR /opt/app
RUN adduser app
COPY addressbook/ .
RUN npm install
RUN npm install --save pm2
RUN chown -R app /opt/app
USER app
EXPOSE 3000
CMD [ "npm", "run", "pm2" ]