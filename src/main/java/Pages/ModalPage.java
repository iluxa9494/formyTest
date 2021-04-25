package Pages;

import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class ModalPage {

    WebDriver driver;
    DatepickerPage datepickerPage = PageFactory.initElements(driver, DatepickerPage.class);

    @FindBy(id = "modal-button")
    public static WebElement modalButton;
    @FindBy(id = "exampleModalLabel")
    public static WebElement modalWindowFirstTitle;
    @FindBy(xpath = "//button[@class='close']")
    public static WebElement closeRightTopButtonOfModalWindow;
    @FindBy(id = "close-button")
    public static WebElement closeButtonOfModalWindow;
    @FindBy(id = "ok-button")
    public static WebElement okButtonOfModalWindow;
    @FindBy(xpath = "//div[@class='modal fade show']")
    public static WebElement modalWindow;

    public ModalPage(WebDriver driver) {
        this.driver = driver;
    }

    public void buttonTitleCheck(String arg1) {
        System.out.println(modalButton.getText().equals(arg1) ? "Button has had correct title PASSED" :
                "Button has not had correct title FAILED");
    }

    public void hasModalWindowDisplayed() {
        try {
            System.out.println(modalWindow.isDisplayed() ? "Modal window has been displayed" : "Anything has gone wrong FAILED");
        } catch (NoSuchElementException e) {
            System.out.println("Modal window has been hidden");
        }
    }

    public void hasModalWindowTitlesCheck(String arg1, String arg2) {
        switch (arg1) {
            case "first":
                System.out.println(modalWindowFirstTitle.getText().equals(arg2) ? "First title has been displayed correctly PASSED" :
                        "First title has been displayed incorrectly FAILED");
                break;
            case "second":
                WebElement modalWindowSecondTitle = driver.findElement(By.xpath("//div[@class='modal-body']"));
                System.out.println(modalWindowSecondTitle.getText().equals(arg2) ? "Second title has been displayed correctly PASSED" :
                        "Second title has been displayed incorrectly FAILED");
                break;
        }
    }

    public void hasModalButtonNotSelectedEnabled() {
        System.out.println(!(modalButton.isSelected()) && modalButton.isEnabled() ? "Modal button has not selected and enabled PASSED" :
                "Modal button has selected or enabled FAILED?");
    }

    public void hasModalElementClick(String arg1) throws InterruptedException {
        switch (arg1) {
            case "close":
                Thread.sleep(1200);
                closeButtonOfModalWindow.click();
                break;
            case "open modal":
                modalButton.click();
                break;
            case "close right top":
                Thread.sleep(1200);
                closeRightTopButtonOfModalWindow.click();
                break;
            case "ok":
                Thread.sleep(1200);
                okButtonOfModalWindow.click();
                break;
        }
    }

    public void hasPageAddressCheck(String arg1) {
        datepickerPage.openedPageCheck(driver.getCurrentUrl(), arg1);
    }

    public void escapePressModal() throws InterruptedException {
        Thread.sleep(1200);
        modalWindow.sendKeys(Keys.ESCAPE);
    }
}