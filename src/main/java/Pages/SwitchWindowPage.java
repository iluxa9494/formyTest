package Pages;

import org.openqa.selenium.NoAlertPresentException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.ArrayList;

public class SwitchWindowPage {

    WebDriver driver;
    @FindBy(id = "new-tab-button")
    public static WebElement openNewTabButton;
    @FindBy(id = "alert-button")
    public static WebElement openAlertButton;

    public SwitchWindowPage(WebDriver driver) {
        this.driver = driver;
    }

    public void hasSwitchWindowButtonTitleCheck(String arg1, String arg2) {
        switch (arg1) {
            case "open new tab":
                System.out.println(openNewTabButton.getText().equals(arg2) ? arg1 + " has had correct title PASSED" :
                        arg1 + " has not had correct title FAILED");
                break;
            case "open alert":
                System.out.println(openAlertButton.getText().equals(arg2) ? arg1 + " has had correct title PASSED" :
                        arg1 + " has not had correct title FAILED");
                break;
        }
    }

    public void hasSwitchWindowButtonsUnselectedEnabledCheck(String arg1) {
        switch (arg1) {
            case "open new tab":
                System.out.println(!(openNewTabButton.isSelected()) && openNewTabButton.isEnabled() ? arg1 + " has been unselected, enabled PASSED" :
                        arg1 + " has not been unselected or enabled FAILED");
                break;
            case "open alert":
                System.out.println(!(openAlertButton.isSelected()) && openAlertButton.isEnabled() ? arg1 + " has been unselected, enabled PASSED" :
                        arg1 + " has not been unselected or enabled FAILED");
                break;
        }
    }

    public void hasSwitchWindowButtonsClickCheck(String arg1) {
        switch (arg1) {
            case "open new tab":
                openNewTabButton.click();
                break;
            case "open alert":
                openAlertButton.click();
                break;
        }
    }

    public void hasSwitchWindowTabCheck(String arg1) {
        ArrayList<String> tabs = new ArrayList<>(driver.getWindowHandles());
        switch (arg1) {
            case "new":
                driver.switchTo().window(tabs.get(1));
                break;
            case "previous":
                driver.close();
                driver.switchTo().window(tabs.get(0));
                break;
        }
    }

    public void hasSwitchWindowAlertOpenedCheck(String arg1) {
        switch (arg1) {
            case "opened":
                System.out.println(alertCheck() ? "Alert has opened PASSED" : "Alert has absent FAILED");
                break;
            case "absent":
                System.out.println(alertCheck() ? "Alert has opened FAILED" : "Alert has absent PASSED");
                break;
        }
    }

    public boolean alertCheck() {
        try {
            driver.switchTo().alert();
            return true;
        } catch (NoAlertPresentException e) {
            return false;
        }
    }

    public void hasSwitchWindowAlertTitleCheck(String arg1) {
        System.out.println(driver.switchTo().alert().getText().equals(arg1) ? "Alert has had correct title PASSED" :
                "Alert has not had correct title FAILED");
    }

    public void hasSwitchWindowAlertAcceptCheck() {
        driver.switchTo().alert().accept();
    }

    public void hasSwitchWindowAlertEscapeCheck() {
        driver.switchTo().alert().dismiss();
    }
}