FROM cypress/browsers:chrome67-ff57

WORKDIR /usr/src/app/

COPY package.json .
RUN npm install

COPY cypress cypress
COPY cypress.json .

CMD ["npx", "cypress", "run", "--browser", "chrome", "--reporter", "mochawesome"]