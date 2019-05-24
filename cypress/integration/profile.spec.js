// Space reserved for imports

describe('Profile Tests', () => {

    var profileUrl = "http://www.jmarshthompson.com/"

    before(() => {
        cy.visit(profileUrl)
    })

    specify("URLs should match", () => {
        cy.url()
        .should('eq', profileUrl)
    })
})