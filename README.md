# Dendrology

Dendrology is a repository of automated tests using Cypress.io and ES6.

## Why Cypress.io?

My team stumbled upon Cypress.io while our consulting team researched ways to circumvent dependency issues resulting from a large amount of mismatching Ruby gems. The number of mismatches ultimately led to automation failures for their team and, unfortunately, a few hotfixes. These incidents highlighted two things for us:
 
 1. The value of automated tests in catching bugs for our highly visible product
 2. The value of a lightweight, no-nonsense automation framework
 
While our consulting team ended up 'dockerizing' their Ruby tests in the short term, our QA department ultimately determined that a simple NPM install was favorable compared to maintaining a slew of dependencies for our aging Ruby framework. 

After some research, I narrowed the selections to Testcafe and Cypress. Our team chose Cypress due to its fairly powerful test runner, simple UI, and the ability to create screenshots out of the box (unlike Testcafe).

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