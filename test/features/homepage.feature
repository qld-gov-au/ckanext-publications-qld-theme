@smoke
Feature: Homepage

    @homepage
    @unauthenticated
    Scenario: Smoke test to ensure Homepage is accessible
        Given "Unauthenticated" as the persona
        When I go to homepage
        Then I should see an element with xpath "//meta[@name='DCTERMS.publisher' and @content='corporateName=The State of Queensland; jurisdiction=Queensland' and @scheme='AGLSTERMS.AglsAgent']"
        And I should see an element with xpath "//meta[@name='DCTERMS.jurisdiction' and @content='Queensland' and @scheme='AGLSTERMS.AglsJuri']"
        And I should see an element with xpath "//meta[@name='DCTERMS.type' and @content='Text' and @scheme='DCTERMS.DCMIType']"
        And I should see an element with xpath "//a[@href='https://www.forgov.qld.gov.au/information-and-communication-technology/communication-and-publishing/website-and-digital-publishing/queensland-government-gazette/publish-in-the-gazette' and string()='Publish in the Gazettes']"


    @homepage
    @unauthenticated
    Scenario: As a member of the public, when I go to the consistent asset URLs, I can see the asset
        Given "Unauthenticated" as the persona
        When I visit "/assets/css/main"
        Then I should see "Bootstrap"
        When I visit "/assets/css/font-awesome"
        Then I should see "Font Awesome"
        When I visit "/assets/css/select2"
        Then I should see "select2-container"
        When I visit "/assets/js/jquery"
        Then I should see "jQuery"
        When I visit "/assets/js/bootstrap"
        Then I should see "Bootstrap"
