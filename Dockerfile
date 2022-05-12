# `jdkato/vale` installs Vale to `/bin/vale`.
FROM jdkato/vale:v2.10.3

RUN apk add --no-cache --update nodejs nodejs-npm git

COPY lib /lib
COPY package.json /package.json
COPY package-lock.json /package-lock.json

RUN npm install

ENTRYPOINT ["node", "/lib/main.js"]
