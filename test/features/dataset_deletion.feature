@dataset_deletion
Feature: Dataset deletion

    Scenario: Sysadmin creates and deletes a dataset
        Given "SysAdmin" as the persona
        When I log in
        And I create a dataset with name "dataset-deletion" and title "Dataset deletion"
        And I wait for 10 seconds
        Then I should see "Data and Resources"

        When I go to "/dataset/edit/dataset-deletion"
        Then I press the element with xpath "//a[string()='Delete' and @data-module='confirm-action']"
        Then I press the element with xpath "//button[contains(@class, 'btn-primary') and contains(string(), 'Confirm')]"
        And I wait for 5 seconds
        Then I should see "Dataset has been deleted"
        And I should not see "Dataset deletion"
        When I go to "/ckan-admin/trash"
        Then I should see "Dataset deletion"
        Then I press the element with xpath "//form[contains(@id, 'form-purge-package')]//*[contains(text(), 'Purge')]"
