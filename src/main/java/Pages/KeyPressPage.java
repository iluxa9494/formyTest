package Pages;

import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class KeyPressPage {
    WebDriver driver;
    AutocompletePage autocompletePage = PageFactory.initElements(driver, AutocompletePage.class);
    DatepickerPage datepickerPage = PageFactory.initElements(driver, DatepickerPage.class);

    @FindBy(id = "name")
    public static WebElement fullNameInput;
    @FindBy(xpath = "//label[text()='Full name']")
    public static WebElement fullNameTitle;
    @FindBy(id = "button")
    public static WebElement button;

    public KeyPressPage(WebDriver driver) {
        this.driver = driver;
    }

    public void hasTitlePlaceholderTextCheck(String arg1, String arg2, String arg3) {
        switch (arg1) {
            case "full name input":
                if (arg3.equals("title")) {
                    System.out.println(fullNameTitle.getText().equals(arg2) ? "Element has had correct title PASSED"
                            : "Element has had incorrect title FAILED");
                }
                if (arg3.equals("placeholder")) {
                    WebElement placeholder = driver.findElement(By.xpath("//input[@placeholder='Enter full name']"));
                    try {
                        System.out.println(placeholder.isEnabled() ? "Element has had correct placeholder PASSED"
                                : "Element has had incorrect placeholder FAILED");
                    } catch (NoSuchElementException e) {
                        System.out.println("Placeholder has been absent FAILED");
                    }
                }
                break;
            case "button":
                System.out.println(button.getText().equals(arg2) ? "Button has had correct text PASSED"
                        : "Button has had incorrect text FAILED");
                break;
        }
    }

    public void hasElementUnselectedEnabled(String arg1) {
        switch (arg1) {
            case "full name input":
                System.out.println(!(fullNameInput.isSelected()) && fullNameInput.isEnabled() ? arg1 + " has been unselected and enabled PASSED"
                        : arg1 + " has not been unselected or enabled FAILED");
                break;
            case "button":
                System.out.println(!(button.isSelected()) && button.isEnabled() ? arg1 + " has been unselected and enabled PASSED"
                        : arg1 + " has not been unselected or enabled FAILED");
                break;
        }
    }

    public void hasEnterDataInField(String arg1) throws Exception {
        fullNameInput.sendKeys(arg1);
        hasFieldValueCheck(arg1);
    }

    public void hasClickElementAndPageCheck(String arg1) {
        button.click();
        datepickerPage.openedPageCheck(driver.getCurrentUrl(), arg1);
    }

    public void hasFieldValueCheck(String arg1) throws Exception {
        System.out.println(autocompletePage.getInputFieldValue(fullNameInput).equals(arg1) ? "Data has entered PASSED" :
                "Data has not entered FAILED");
    }

    public void hasInputElementEmpty() throws Exception {
        System.out.println(autocompletePage.getInputFieldValue(fullNameInput).equals("") ? "Field has empty PASSED" :
                "Field has not empty FAILED");
    }

    public void hasInputElementClearDelete() throws Exception {
        fullNameInput.sendKeys(Keys.DELETE);
        hasInputElementEmpty();
    }

    public void hasCopyClearPasteFieldCheck() throws Exception {
        autocompletePage.clearMethod(fullNameInput);
    }

    public void clickOnFiledElementCheck() {
        fullNameInput.click();
    }

    public void hasClearFieldCheck() {
        fullNameInput.clear();
    }

    public void hasEnterPress() {
        fullNameInput.sendKeys(Keys.ENTER);
    }
}