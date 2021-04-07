package Pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ErrorPage {
    WebDriver driver;

    @FindBy(xpath = "//div/h1")
    public static WebElement firstTitle;
    @FindBy(xpath = "//div/div/p")
    public static WebElement secondTitle;
    @FindBy(xpath = "//div[@class='dialog']/p")
    public static WebElement thirdTitle;

    public void isTitleErrorDisplayed(String arg1, String arg2) {
        switch (arg1) {
            case ("first"):
                System.out.println(firstTitle.getText());
                System.out.println(firstTitle.getText().equals(arg2) ? arg1 + " has displayed correctly PASSED" :
                        arg1 + " has not displayed correctly FAILED");
                break;
            case ("second"):
                System.out.println(secondTitle.getText().equals(arg2) ? arg1 + " has displayed correctly PASSED" :
                        arg1 + " has not displayed correctly FAILED");
                break;
            case ("third"):
                System.out.println(thirdTitle.getText().equals(arg2) ? arg1 + " has displayed correctly PASSED" :
                        arg1 + " has not displayed correctly FAILED");
                break;
        }
    }
}