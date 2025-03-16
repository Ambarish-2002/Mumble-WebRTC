
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENV APP_ID="YOUR-APP-ID"
ENV PORT=3000

# Start the application
CMD ["npm", "start"]
