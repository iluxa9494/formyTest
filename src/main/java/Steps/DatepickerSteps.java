package Steps;

import Config.Drive;
import Pages.DatepickerPage;
import io.cucumber.java.en.Then;
import org.openqa.selenium.support.PageFactory;

public class DatepickerSteps extends Drive {

    DatepickerPage datepickerPage = PageFactory.initElements(driver, DatepickerPage.class);

    @Then("Go to {string} page")
    public void goToPage(String page) {
        datepickerPage.goPage(page);//for list on welcome page only
        datepickerPage.isDatepickerPage();
    }

    @Then("Refresh the page and check: the datepicker page is opened and the input field is empty")
    public void refreshThePage() {
        datepickerPage.refreshPage();
    }

    @Then("Click on input field and check calendar is opened")
    public void calendarOpened() throws Exception {
        datepickerPage.isCalendarOpened();
    }

    @Then("Click on and check {string} {string} is displayed")
    public void chooseElementOpened(String button, String date) throws Exception {
        datepickerPage.chooseElementIsOpened(button, date);
    }

    @Then("Pick {string} and check the calendar is closed and the picked date is displayed in the input field")
    public void pickAndCheckCalendarDate(String date) throws Exception {
        datepickerPage.pickAndCheckCalendarDateIsDisplayed(date);
    }

    @Then("Click on the {string} element and check {string} {string} and {string}: {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string} are displayed")
    public void clickAndCheckCurrentYear(String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7, String arg8,
                                         String arg9, String arg10, String arg11, String arg12, String arg13, String arg14, String arg15, String arg16) throws Exception {
        datepickerPage.chooseAndCheckCurrentYearIsDisplayed(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16);
    }

    @Then("Type {string} and press Enter")
    public void typingPress(String arg1) {
        datepickerPage.typeAndPress(arg1);
    }

    @Then("Check {string} {string} is displayed")
    public void dateCheck(String arg1, String arg2) throws Exception {
        datepickerPage.checkCalendarValue(arg1, arg2);
    }

    @Then("Click on title Datepicker and check calendar is closed")
    public void clickOnTitle() throws Exception {
        datepickerPage.clickOnTitleCheck();
    }

    @Then("Click on {string} and check {string} page is opened")
    public void pageOpened(String arg1, String arg2) {
        datepickerPage.isPageOpened(arg1, arg2);
    }

    //header
    @Then("Click on {string} and check inside a dropdown list with: {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}")
    public void componentsCheck(String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7, String arg8,
                                String arg9, String arg10, String arg11, String arg12, String arg13, String arg14, String arg15) {
        datepickerPage.headerComponentsCheck(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15);
    }

    @Then("Click on {string} and check {string} page has opened")
    public void componentsClick(String arg1, String arg2) {
        datepickerPage.componentsClick1(arg1, arg2);
    }

    @Then("Click on {string} and check {string} page was opened")
    public void backwardToComponents(String arg1, String arg2) {
        datepickerPage.backwardPageComponents(arg1, arg2);
    }

}