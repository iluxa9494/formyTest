package Pages;

import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;

public class WelcomePage {
    WebDriver driver;
    @FindBy(xpath = "//p[text()='This is a simple site that has form components that can be used for testing purposes.']")
    public static WebElement firstTitle;
    @FindBy(xpath = "//p[text()='Here are the list of all the components']")
    public static WebElement secondTitle;

    public WelcomePage(WebDriver driver) {
        this.driver = driver;
    }

    public void hasFirstSecondTitleCheck(String arg1, String arg2) {
        switch (arg1) {
            case "first title":
                System.out.println(firstTitle.getText().equals(arg2) ? arg1 + " has displayed correctly PASSED" :
                        arg1 + " has displayed incorrectly FAILED");
                break;
            case "second title":
                System.out.println(secondTitle.getText().equals(arg2) ? arg1 + " has displayed correctly PASSED" :
                        arg1 + " has displayed incorrectly FAILED");
                break;
        }
    }

    public void hasAllElementsInListCheck(String... arg1) throws InterruptedException {
        Thread.sleep(300);
        try {
            for (String a : arg1) {
                WebElement listElement = driver.findElement(By.xpath("//a[@class='dropdown-item' and text()='" + a + "']"));
                listElement.isDisplayed();
            }
            System.out.println("All elements have been in the list PASSED");
        } catch (NoSuchElementException e) {
            System.out.println("Something went wrong FAILED");
        }
    }

//    public void hasWelcomeElementCirclesMarkerCheck(String arg1) {
//    }

    public void haswelcomeElementUnselectedEnabledCheck(String arg1) {
        try {
            WebElement listElement = driver.findElement(By.xpath("//a[@class='dropdown-item' and text()='" + arg1 + "']"));
            System.out.println(!(listElement.isSelected()) && (listElement.isEnabled()) ? arg1 + " element has been unselected and enabled PASSED"
                    : arg1 + " element has not been unselected or enabled FAILED");
        } catch (NoSuchElementException e) {
            System.out.println("Something went wrong FAILED");
        }
    }
}