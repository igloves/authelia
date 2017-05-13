FROM node

WORKDIR /usr/src

COPY package.json /usr/src/package.json
RUN npm install

ADD src /usr/src/src

ENV PORT=80
EXPOSE 80

VOLUME /etc/auth-server
VOLUME /var/lib/auth-server

CMD ["node", "src/index.js", "/etc/auth-server/config.yml"]
