FROM node:argon

# Create app directory
RUN mkdir /app
WORKDIR /app

# Install app dependencies
COPY package.json /app/package.json
RUN npm install

EXPOSE 3000
EXPOSE 5858

CMD ["npm", "start"]
