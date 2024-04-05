FROM node:18

WORKDIR /app
COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

COPY . .

CMD ["npm", "start", "--", "--host", "0.0.0.0"]
