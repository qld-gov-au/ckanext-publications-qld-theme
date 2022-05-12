@google-analytics
Feature: GoogleAnalytics

    Scenario: When viewing the HTML source code of a CKAN page, the GTM snippet is visible
        When I go to homepage
        Then I should see an element with xpath "//script[@src='//www.googletagmanager.com/gtm.js?id=False']"

    Scenario: When viewing the HTML source code of an organisation, the appropriate metadata is visible
        When I go to organisation page
        And I click the link with text that contains "Department of Health"
        And I click the link with text that contains "About"
        Then I should see an element with xpath "//meta[@name='DCTERMS.title' and @content='Department of Health']"
        And I should see an element with xpath "//meta[@name='DCTERMS.publisher' and @content='corporateName=The State of Queensland; jurisdiction=Queensland' and @scheme='AGLSTERMS.AglsAgent']"
        And I should see an element with xpath "//meta[@name='DCTERMS.creator' and @content='c=AU; o=The State of Queensland; ou=Department of Health' and @scheme='AGLSTERMS.GOLD']"
        And I should see an element with xpath "//meta[@name='DCTERMS.created' and @content != '' and @content != 'None']"
        And I should see an element with xpath "//meta[@name='DCTERMS.modified' and @content != '' and @content != 'None']"
        And I should see an element with xpath "//meta[@name='DCTERMS.description' and @content='Department of Health']"
        And I should see an element with xpath "//meta[@name='DCTERMS.identifier' and @content != '' and @content != 'None']"
        And I should see an element with xpath "//meta[@name='DCTERMS.jurisdiction' and @content='Queensland' and @scheme='AGLSTERMS.AglsJuri']"
        And I should see an element with xpath "//meta[@name='DCTERMS.type' and @content='Text' and @scheme='DCTERMS.DCMIType']"
        And I should see an element with xpath "//meta[@name='AGLSTERMS.documentType' and @content='guidelines']"

    Scenario: When viewing the HTML source code of a dataset, the appropriate metadata is visible
        When I go to Dataset page
        And I click the link with text that contains "A Novel By Tolstoy"
        Then I should see an element with xpath "//meta[@name='DCTERMS.title' and @content='A Novel By Tolstoy']"
        And I should see an element with xpath "//meta[@name='DCTERMS.publisher' and @content='corporateName=The State of Queensland; jurisdiction=Queensland' and @scheme='AGLSTERMS.AglsAgent']"
        And I should see an element with xpath "//meta[@name='DCTERMS.creator' and @content='c=AU; o=The State of Queensland; ou=Test Organisation' and @scheme='AGLSTERMS.GOLD']"
        And I should see an element with xpath "//meta[@name='DCTERMS.created' and @content != '' and @content != 'None']"
        And I should see an element with xpath "//meta[@name='DCTERMS.modified' and @content != '' and @content != 'None']"
        And I should see an element with xpath "//meta[@name='DCTERMS.description' and contains(@content, 'Some bolded text.')]"
        And I should see an element with xpath "//meta[@name='DCTERMS.identifier' and @content != '' and @content != 'None']"
        And I should see an element with xpath "//meta[@name='DCTERMS.jurisdiction' and @content='Queensland' and @scheme='AGLSTERMS.AglsJuri']"
        And I should see an element with xpath "//meta[@name='DCTERMS.type' and @content='Text' and @scheme='DCTERMS.DCMIType']"
        And I should see an element with xpath "//meta[@name='AGLSTERMS.documentType' and @content='index']"

    Scenario: When viewing the HTML source code of a resource, the appropriate metadata is visible
        When I go to Dataset page
        And I click the link with text that contains "A Novel By Tolstoy"
        And I click the link with text that contains "Full text"
        Then I should see an element with xpath "//meta[@name='DCTERMS.title' and @content='Full text']"
        And I should see an element with xpath "//meta[@name='DCTERMS.publisher' and @content='corporateName=The State of Queensland; jurisdiction=Queensland' and @scheme='AGLSTERMS.AglsAgent']"
        And I should see an element with xpath "//meta[@name='DCTERMS.creator' and @content='c=AU; o=The State of Queensland; ou=Test Organisation' and @scheme='AGLSTERMS.GOLD']"
        And I should see an element with xpath "//meta[@name='DCTERMS.created' and @content != '' and @content != 'None']"
        And I should see an element with xpath "//meta[@name='DCTERMS.modified' and @content != '' and @content != 'None']"
        And I should see an element with xpath "//meta[@name='DCTERMS.description' and contains(@content, 'Full text. Needs escaping')]"
        And I should see an element with xpath "//meta[@name='DCTERMS.identifier' and @content != '' and @content != 'None']"
        And I should see an element with xpath "//meta[@name='DCTERMS.jurisdiction' and @content='Queensland' and @scheme='AGLSTERMS.AglsJuri']"
        And I should see an element with xpath "//meta[@name='DCTERMS.type' and @content='Text' and @scheme='DCTERMS.DCMIType']"
        And I should see an element with xpath "//meta[@name='AGLSTERMS.documentType' and @content='dataset']"
