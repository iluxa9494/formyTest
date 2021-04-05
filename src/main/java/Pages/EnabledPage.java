package Pages;

import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class EnabledPage {
    WebDriver driver;
    AutocompletePage autocompletePage = PageFactory.initElements(driver, AutocompletePage.class);

    @FindBy(id = "disabledInput")
    public static WebElement disabledField;
    @FindBy(id = "input")
    public static WebElement enabledField;

    public EnabledPage(WebDriver driver) {
        this.driver = driver;
    }

    public void isUnselectedAndDisabledCheck() {
        System.out.println(!(disabledField.isSelected() && !(disabledField.isEnabled())) ?
                "Disabled input field has not selected and not enabled PASSED" : "Disabled input field has not worked ok FAILED");
    }

    public void isPlaceholderTextCheck(String arg1, String arg2) {
        WebElement inputFieldPlaceholder = driver.findElement(By.xpath("//input[@placeholder='" + arg2 + "']"));
        try {
            System.out.println(inputFieldPlaceholder.isDisplayed() ?
                    arg1 + " has had correct placeholder text PASSED" : arg1 + " has not had correct placeholder text FAILED");
        } catch (NoSuchElementException e) {
            System.out.println("Placeholder has absent in the input field FAILED");
        }
    }

    public void isUnselectedAndDisabledEnabledFieldCheck() {
        System.out.println(!(enabledField.isSelected() && enabledField.isEnabled()) ?
                "Enabled input field has not selected and enabled PASSED" : "Enabled input field has not worked ok FAILED");
    }

    public void isInputFieldEmptyCheck() throws Exception {
        System.out.println(autocompletePage.getInputFieldValue(enabledField).equals("") ?
                "Enabled input field has been empty PASSED" : "Enabled input field has not been empty FAILED");
    }

    public void whatFieldValueCheck(String arg1) throws Exception {
        System.out.println(autocompletePage.getInputFieldValue(enabledField).equals(arg1) ?
                "Enabled input field has had " + arg1 + " value PASSED" : "Enabled input field has not had " + arg1 + " value FAILED");
    }

    public void isEnterValueInEnabledInputFiled(String arg1) throws Exception {
        enabledField.sendKeys(arg1);
        whatFieldValueCheck(arg1);
    }

    public void isClearEnabledInputFieldViaDelete() {
        enabledField.sendKeys(Keys.DELETE);
    }

    public void isCopyClearPasteValueEnabledInputField() throws Exception {
        String copyDataFromEnabledField = autocompletePage.getInputFieldValue(enabledField);
        enabledField.sendKeys(Keys.DELETE);
        autocompletePage.pasteValueToInputField(enabledField);
        String copyDataFromEnabledFieldFinal = autocompletePage.getInputFieldValue(enabledField);
        System.out.println(copyDataFromEnabledField.equals(copyDataFromEnabledFieldFinal) ?
                "Copy/paste/delete functions have worked PASSED" : "Copy/paste/delete functions have not worked FAILED");
    }

    public void isEnterValueInDisabledField(String arg1) throws ElementNotInteractableException {
        try {
            disabledField.sendKeys(arg1);
            System.out.println("Data has entered in disabled field FAILED");
        } catch (ElementNotInteractableException e) {
            System.out.println("Data has not entered in disabled field PASSED");
        }
    }
}