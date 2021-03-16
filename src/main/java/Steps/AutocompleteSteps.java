package Steps;

import Config.Drive;
import Pages.AutocompletePage;
import Pages.DatepickerPage;
import io.cucumber.java.en.Then;
import org.junit.Test;
import org.openqa.selenium.support.PageFactory;

public class AutocompleteSteps extends Drive {
    AutocompletePage autocompletePage = PageFactory.initElements(driver, AutocompletePage.class);

    @Test
@Then("Then Enter {string} in Address fields")
    public void entering(String page) {

    }
}
