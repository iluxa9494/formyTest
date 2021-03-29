package Steps;

import Config.Drive;
import Pages.AutocompletePage;
import io.cucumber.java.en.Then;
import org.openqa.selenium.support.PageFactory;

public class AutocompleteSteps extends Drive {
    AutocompletePage autocompletePage = PageFactory.initElements(driver, AutocompletePage.class);

    @Then("Check all fields is empty")
    public void isAllFieldsEmpty() throws Exception {
        autocompletePage.isAllFieldsEmptyCheck();
    }

    @Then("Enter {string} in {string} field and check data has entered")
    public void enterInField(String arg1, String arg2) throws Exception {
        autocompletePage.enterDataInField(arg1, arg2);
    }

    @Then("Check dropdown of {string} field {string} displayed")
    public void isDropdownDisplayed(String arg1, String arg2) throws InterruptedException {
        autocompletePage.dropdownDisplayed(arg1);
    }

    @Then("Check all 5 elements of dropdown list contains {string} in its titles")
    public void isElementsDropdownDisplayed(String arg1) {
        autocompletePage.isElementsInDropdownDisplayed(arg1);
    }

    @Then("Choose {string} in dropdown and check fields: City has got data {string}, state - {string}, country - {string} and other fields are empty")
    public void isAutocomplete(String arg1, String arg2, String arg3, String arg4) throws Exception {
        autocompletePage.isAutocompleteCorrect(arg1, arg2, arg3, arg4);
    }

    @Then("Refresh page and check all fields are empty")
    public void refreshPage() throws Exception {
        autocompletePage.refreshPageCheckFields();
    }

    @Then("Check all fields saved its data: Address - {string}, Street address - {string}, Street address 2 - {string}, City - {string}, State - {string}, Zip code - {string}, Country - {string}")
    public void backwardForwardPage(String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7) throws Exception {
        autocompletePage.backwardForwardPageSavingFieldsData(arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    }

    @Then("Check {string} title is displayed")
    public void isTitleDisplayed(String arg1) {
        autocompletePage.isTitleDisplayedOk(arg1);
    }

    @Then("Check {string} {string} is {string}")
    public void isFieldTitlePlaceholderDisplayed(String arg1, String arg2, String arg3) {
        autocompletePage.isFieldTitlePlaceholderDisplayedCorrectly(arg1, arg2, arg3);
    }

    @Then("Copy data from {string} field, clear via delete, paste data to the field and check the functions have worked")
    public void copyData(String arg1) throws Exception {
        autocompletePage.copyDataFromField(arg1);
    }

    @Then("Clear {string} field via delete")
    public void clearField(String arg1) {
        autocompletePage.clearViaDelete(arg1);
    }
}