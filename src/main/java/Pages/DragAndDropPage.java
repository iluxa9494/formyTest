package Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;

public class DragAndDropPage {
    WebDriver driver;
    @FindBy(xpath = "//p[text()='Drop here']")
    public static WebElement boxTitleDropHere;
    @FindBy(xpath = "//p[text()='Dropped!']")
    public static WebElement boxTitleDropped;
    @FindBy(id = "image")
    public static WebElement seleniumLogo;
    @FindBy(id = "box")
    public static WebElement box;
    @FindBy(xpath = " //div[@id = 'image' and @style='position: relative;']")
    public static WebElement initialLogoPosition;
    @FindBy(xpath = "//div[@id = 'image' and @style = 'position: relative; left: 0px; top: 0px;']")
    public static WebElement initialLogoPositionVariant2;
    @FindBy(xpath = "//div[@id = 'image' and @style = 'position: relative; left: 270px; top: 50px;']")
    public static WebElement droppedLogoPosition;

    public DragAndDropPage(WebDriver driver) {
        this.driver = driver;
    }

    public void isBoxTitleDisplayed(String arg1) {
        switch (arg1) {
            case "Drop here":
                try {
                    System.out.println(boxTitleDropHere.getText().equals(arg1) ?
                            arg1 + " title has displayed PASSED" : arg1 + " title has not displayed FAILED");
                } catch (NoSuchElementException e) {
                    System.out.println("No such " + arg1 + " title here FAILED");
                    break;
                }
                break;
            case "Dropped!":
                try {
                    System.out.println(boxTitleDropped.getText().equals(arg1) ?
                            arg1 + " title has displayed PASSED" : arg1 + " title has not displayed FAILED");
                } catch (NoSuchElementException e) {
                    System.out.println("No such " + arg1 + " title here FAILED");
                    break;
                }
                break;
        }
    }

    public void isSeleniumLogoDisplayed() {
        System.out.println(seleniumLogo.isDisplayed() ?
                "Logo Selenium has displayed PASSED" : "Logo Selenium has not displayed FAILED");
    }

    public void dropSeleniumLogo() {
        new Actions(driver).dragAndDrop(seleniumLogo, box).build().perform();
    }

    public void isLogoPosition(int i) {
        switch (i) { // i = 1 if needs logo has been on initial position and i = 2 if needs logo has not been on initial position
            case 1:
                System.out.println(isDisplayedCheck(initialLogoPosition) ? "Logo Selenium has been on its initial position PASSED" :
                        "Logo Selenium has absent on its initial position FAILED");
                break;
            case 2:
                System.out.println(isDisplayedCheck(initialLogoPosition) ? "Logo Selenium has been on its initial position FAILED" :
                        "Logo Selenium has absent on its initial position PASSED");
                break;
        }
    }

    public boolean isDisplayedCheck(WebElement arg1) {
        try {
            return arg1.isDisplayed();
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    public void isLogoInTheBox() {
        System.out.println(isDisplayedCheck(droppedLogoPosition) ?
                "Logo Selenium has on its dropped position PASSED" : "Logo Selenium has absent on its dropped position FAILED");
    }

    public void isLogoInTheInitialPosition() {
        new Actions(driver).dragAndDropBy(seleniumLogo, -270, -50).build().perform();
        isLogoInitialPosition();
    }

    public void isLogoInitialPosition() {
        System.out.println(isDisplayedCheck(initialLogoPositionVariant2) ?
                "Logo Selenium has on its initial position PASSED" : "Logo Selenium has absent on its initial position FAILED");
    }

    public void isDropWithoutTouching(String arg1) {
        switch (arg1) {
            case "below":
                new Actions(driver).dragAndDropBy(seleniumLogo, 10, 250).build().perform();
                System.out.println(checkLogoPosition("10", "250") ? "Selenium logo has dropped " + arg1 + " PASSED" :
                        "Selenium logo has not dropped " + arg1 + " FAILED");
                break;
            case "to the right":
                new Actions(driver).dragAndDropBy(seleniumLogo, 540, 0).build().perform();
                System.out.println(checkLogoPosition("550", "250") ? "Selenium logo has dropped " + arg1 + " PASSED" :
                        "Selenium logo has not dropped " + arg1 + " FAILED");
                break;
            case "above":
                new Actions(driver).dragAndDropBy(seleniumLogo, 0, -250).build().perform();
                System.out.println(checkLogoPosition("550", "0") ? "Selenium logo has dropped " + arg1 + " PASSED" :
                        "Selenium logo has not dropped " + arg1 + " FAILED");
                break;
            case "less 50% of the right":
                new Actions(driver).dragAndDropBy(seleniumLogo, 115, 70).build().perform();
                System.out.println(checkLogoPosition("115", "70") ? "Selenium logo has dropped " + arg1 + " side length PASSED" :
                        "Selenium logo has not dropped " + arg1 + " side length FAILED");
                break;
            case "less 50% of the upper":
                new Actions(driver).dragAndDropBy(seleniumLogo, 150, 150).build().perform();
                System.out.println(checkLogoPosition("265", "220") ? "Selenium logo has dropped " + arg1 + " side length PASSED" :
                        "Selenium logo has not dropped " + arg1 + " side length FAILED");
                break;
            case "less 50% of the left":
                new Actions(driver).dragAndDropBy(seleniumLogo, 165, -160).build().perform();
                System.out.println(checkLogoPosition("430", "60") ? "Selenium logo has dropped " + arg1 + " side length PASSED" :
                        "Selenium logo has not dropped " + arg1 + " side length FAILED");
                break;
            case "less 50% of the down":
                new Actions(driver).dragAndDropBy(seleniumLogo, -170, -170).build().perform();
                System.out.println(checkLogoPosition("260", "-110") ? "Selenium logo has dropped " + arg1 + " side length PASSED" :
                        "Selenium logo has not dropped " + arg1 + " side length FAILED");
                break;
            case "more 50% of the right":
                new Actions(driver).dragAndDropBy(seleniumLogo, 150, 40).build().perform();
                System.out.println(checkLogoPosition("150", "40") ? "Selenium logo has dropped " + arg1 + " side length PASSED" :
                        "Selenium logo has not dropped " + arg1 + " side length FAILED");
                break;
            case "more 50% of the upper":
                new Actions(driver).dragAndDropBy(seleniumLogo, 270, 180).build().perform();
                System.out.println(checkLogoPosition("270", "180") ? "Selenium logo has dropped " + arg1 + " side length PASSED" :
                        "Selenium logo has not dropped " + arg1 + " side length FAILED");
                break;
            case "more 50% of the left":
                new Actions(driver).dragAndDropBy(seleniumLogo, 385, 40).build().perform();
                System.out.println(checkLogoPosition("385", "40") ? "Selenium logo has dropped " + arg1 + " side length PASSED" :
                        "Selenium logo has not dropped " + arg1 + " side length FAILED");
                break;
            case "more 50% of the down":
                new Actions(driver).dragAndDropBy(seleniumLogo, 265, -70).build().perform();
                System.out.println(checkLogoPosition("265", "-70") ? "Selenium logo has dropped " + arg1 + " side length PASSED" :
                        "Selenium logo has not dropped " + arg1 + " side length FAILED");
                break;
        }
    }

    public boolean checkLogoPosition(String arg1, String arg2) {
        WebElement logoPosition = driver.findElement(By.xpath(
                "//div[@id = 'image' and @style = 'position: relative; left: " + arg1 + "px; top: " + arg2 + "px;']"));
        return isDisplayedCheck(logoPosition);
    }
}