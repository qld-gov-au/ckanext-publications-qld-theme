Feature: Navigation


    Scenario: Check for the presence of the "Copyright" link in footer when visiting as a non-logged in user
        When I go to homepage
        Then I should see an element with xpath "//footer/div/ul/li/a[contains(string(), "Copyright")]"

    Scenario: Check for the presence of the "Disclaimer" link in footer when visiting as a non-logged in user
        When I go to homepage
        Then I should see an element with xpath "//footer/div/ul/li/a[contains(string(), "Disclaimer")]"

    Scenario: Check for the presence of the 'Web Address Changes' link
        When I go to homepage
        And I click the link to a url that contains "#web-address-changes"
        Then I should see an element with xpath "//h2[@id='web-address-changes' and string()='Queensland Government Publications web address changes']"
