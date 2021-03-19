package Steps;

import Config.Drive;
import Pages.AutocompletePage;
import Pages.WelcomePage;
import io.cucumber.java.en.Then;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

import java.io.IOException;

public class WelcomeSteps extends Drive {
    WelcomePage welcomePage = PageFactory.initElements(driver, WelcomePage.class);
    Drive drivePage = PageFactory.initElements(driver, Drive.class);

    @Then("Open browser and go to Formy site")
    public void chooseTheDriver() throws IOException {
        drivePage.chooseDriver();
    }


}
