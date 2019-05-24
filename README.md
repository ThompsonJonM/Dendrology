# Dendrology

Dendrology is a repository of automated tests using Cypress.io and ES6.

## Why Cypress.io?

My team stumbled upon Cypress.io while researching ways to circumvent dependency issues resulting from a large amount of Ruby gems on our build servers. While we ended up 'dockerizing' our Ruby tests, we ultimately determined that a simple NPM install was favorable compared to installing a slew of dependencies for our aging Ruby framework. 

After some research, we narrowed the selections to Testcafe and Cypress. Our team chose Cypress due to its fairly powerful test runner, simple UI, and the ability to create screenshots out of the box (unlike Testcafe).

## Installation

Simply clone this repository, then run the following commands:

```
npm install cypress --save-dev
```

This will install Cypress as a dev dependency. Once installed, run the following:

```
npx cypress open
```

This will open the Cypress test runner. From here, you may select which test to run. Tests are located in the 'integration' folder.