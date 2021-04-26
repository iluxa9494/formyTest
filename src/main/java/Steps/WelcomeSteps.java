package Steps;

import Config.Drive;
import Pages.WelcomePage;
import io.cucumber.java.en.Then;
import org.openqa.selenium.support.PageFactory;

public class WelcomeSteps extends Drive {
    WelcomePage welcomePage = PageFactory.initElements(driver, WelcomePage.class);

    @Then("Check {string} has a {string} text")
    public void firstSecondTitleCheck(String arg1, String arg2) {
        welcomePage.hasFirstSecondTitleCheck(arg1, arg2);
    }

    @Then("Check list of the all components has displayed and contained: {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}")
    public void allElementsInListCheck(String arg1, String arg2, String arg3, String arg4, String arg5, String arg6,
                                       String arg7, String arg8, String arg9, String arg10, String arg11, String arg12,
                                       String arg13, String arg14) throws InterruptedException {
        welcomePage.hasAllElementsInListCheck(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14);
    }

//    @Then("Check {string} has a circles marker in the list")
//    public void welcomeElementCirclesMarkerCheck(String arg1) {
//        welcomePage.hasWelcomeElementCirclesMarkerCheck(arg1);
//    }

    @Then("Check {string} element has been unselected, enabled")
    public void welcomeElementUnselectedEnabledCheck(String arg1) {
        welcomePage.haswelcomeElementUnselectedEnabledCheck(arg1);
    }
}