@config
Feature: Config

    Scenario: Assert that configuration values are available
        Given "Admin" as the persona
        When I log in
        And I visit "ckan-admin/config"
        And I should see "Intro Text"
        And I should not see an element with id "field-ckan-main-css"
        And I should not see an element with id "field-ckan-site-custom-css"
