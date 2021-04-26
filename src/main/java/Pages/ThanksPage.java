package Pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ThanksPage {
    WebDriver driver;
    @FindBy(xpath = "//div[@role='alert']")
    public static WebElement successTitle;
    @FindBy(xpath = "//h1[text()='Thanks for submitting your form']")
    public static WebElement pageTitle;

    public ThanksPage(WebDriver driver) {
        this.driver = driver;
    }

    public void hasThanksElementTitleCheck(String arg1) {
        System.out.println(driver);
        System.out.println(successTitle.getText().equals(arg1) ? "Title has displayed correctly PASSED" :
                "Title has displayed incorrectly FAILED");
    }

    public void hasUnselectedTitleCheck(String arg1) {
        switch (arg1) {
            case "success title":
                System.out.println(!(successTitle.isSelected()) ? "Title has been unselected PASSED" :
                        "Title has been selected FAILED");
                break;
            case "page title":
                System.out.println(!(pageTitle.isSelected()) ? "Title has been unselected PASSED" :
                        "Title has been selected FAILED");
                break;
        }
    }
}