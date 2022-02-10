@config
Feature: Config

    Scenario: Assert that CSS configuration values are removed
        Given "SysAdmin" as the persona
        When I log in and go to admin config page
        Then I should see "Intro Text"
        And I should not see an element with id "field-ckan-main-css"
        And I should not see an element with id "field-ckan-site-custom-css"
