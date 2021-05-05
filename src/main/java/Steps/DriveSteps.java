package Steps;

import Config.Drive;
import io.cucumber.java.en.Then;
import org.openqa.selenium.support.PageFactory;

import java.io.IOException;

public class DriveSteps extends Drive {
    Drive drivePage = PageFactory.initElements(driver, Drive.class);

    @Then("Open browser and go to Formy site")
    public void chooseTheDriver() throws IOException {
        drivePage.chooseDriver();
    }

    @Then("Close browser")
    public void closeBrowser(){
        drivePage.StopTest();
    }
}
