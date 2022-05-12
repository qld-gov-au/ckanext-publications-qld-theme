@google-analytics
Feature: GoogleAnalytics

    Scenario: When viewing the HTML source code of a CKAN page, the GTM snippet is visible
        When I go to homepage
        Then I should see an element with xpath "//script[@src='//www.googletagmanager.com/gtm.js?id=False']"

    Scenario: When viewing the HTML source code of a dataset, the organisation meta data is visible
        When I go to Dataset page
        And I click the link with text that contains "Department of Health Spend Data"
        Then I should see an element with xpath "//meta[@name='DCTERMS.creator' and @content='c=AU; o=The State of Queensland; ou=Department of Health' and @scheme='AGLSTERMS.GOLD']"

    Scenario: When viewing the HTML source code of a dataset, the appropriate metadata is visible
        When I go to Dataset page
        And I click the link with text that contains "A Novel By Tolstoy"
        And I should see an element with xpath "//meta[@name='DCTERMS.title' and @content='A Novel By Tolstoy']"
        And I should see an element with xpath "//meta[@name='DCTERMS.publisher' and @content='corporateName=The State of Queensland; jurisdiction=Queensland' and @scheme='AGLSTERMS.AglsAgent']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.creator' and @content='c=AU; o=The State of Queensland; ou=Test Organisation' and @scheme='AGLSTERMS.GOLD']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.created']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.modified']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.description' and contains(@content, 'Some bolded text.')]"
        Then I should see an element with xpath "//meta[@name='DCTERMS.identifier']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.jurisdiction' and @content='Queensland' and @scheme='AGLSTERMS.AglsJuri']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.type' and @content='text' and @scheme='DCTERMS.DCMIType']"
        Then I should see an element with xpath "//meta[@name='AGLSTERMS.documentType' and @content='index']"

    Scenario: When viewing the HTML source code of a resource, the appropriate metadata is visible
        When I go to Dataset page
        And I click the link with text that contains "A Novel By Tolstoy"
        And I click the link with text that contains "Full text"
        And I should see an element with xpath "//meta[@name='DCTERMS.title' and @content='Full text']"
        And I should see an element with xpath "//meta[@name='DCTERMS.publisher' and @content='corporateName=The State of Queensland; jurisdiction=Queensland' and @scheme='AGLSTERMS.AglsAgent']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.creator' and @content='c=AU; o=The State of Queensland; ou=Test Organisation' and @scheme='AGLSTERMS.GOLD']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.created']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.modified']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.description' and contains(@content, 'Full text. Needs escaping')]"
        Then I should see an element with xpath "//meta[@name='DCTERMS.identifier']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.jurisdiction' and @content='Queensland' and @scheme='AGLSTERMS.AglsJuri']"
        Then I should see an element with xpath "//meta[@name='DCTERMS.type' and @content='text' and @scheme='DCTERMS.DCMIType']"
        Then I should see an element with xpath "//meta[@name='AGLSTERMS.documentType' and @content='dataset']"
