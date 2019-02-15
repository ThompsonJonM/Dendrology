FROM cypress/browsers:chrome67-ff57

RUN npm install cypress
RUN node_modules/.bin/cypress verify
RUN node_modules/.bin/cypress --version

WORKDIR /usr/src/app/

COPY cypress cypress
COPY cypress.json

CMD ["npx", "cypress", "run"]