package Steps;

import Config.Drive;
import Pages.DropdownPage;
import io.cucumber.java.en.Then;
import org.openqa.selenium.support.PageFactory;

public class DropdownSteps extends Drive {
    DropdownPage dropdownPage = PageFactory.initElements(driver, DropdownPage.class);

    @Then("Check Dropdown button has title {string}")
    public void titleDisplayed(String arg1) {
        dropdownPage.isTitleDisplayed(arg1);
    }

    @Then("Check Dropdown button not selected, enabled")
    public void buttonSelectedOrEnabled() {
        dropdownPage.isButtonSelectedOrEnabled();
    }

    @Then("Check elements: {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string} have displayed")
    public void dropdownListDisplayed(String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7, String arg8,
                                      String arg9, String arg10, String arg11, String arg12, String arg13, String arg14, String arg15) {
        dropdownPage.isDropdownListDisplayed(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15);
    }

    @Then("Check dropdown list has closed")
    public void listClosed() {
        dropdownPage.isListClosed();
    }

    @Then("Click on {string} in dropdown list and check {string} page has opened")
    public void pageOpenedFromDropdownList(String arg1, String arg2) {
        dropdownPage.isPageOpenedFromDropdownList(arg1, arg2);
    }

    @Then("Click on dropdown button")
    public void clickDropdownButton() {
        dropdownPage.isClickDropdownButton();
    }
}