FROM node:lts-hydrogen

ENV HOST=0.0.0.0
ENV PORT=8080

RUN mkdir -p /code
WORKDIR /code
RUN apt-get update && apt-get install chromium -y
COPY . /code
RUN npm install
RUN npm run build:compile && npm run build:dist && npm run build:package
CMD [ "npm", "start" ]
EXPOSE 8080
