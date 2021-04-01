package Pages;

import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class FileUploadPage {
    WebDriver driver;
    AutocompletePage autocompletePage = PageFactory.initElements(driver, AutocompletePage.class);

    @FindBy(xpath = "//button[text()='Choose']")
    public static WebElement chooseButton;
    @FindBy(xpath = "//button[text()='Reset']")
    public static WebElement resetButton;
    @FindBy(id = "file-upload-field")
    public static WebElement fileUploadField;

    @FindBy(xpath = "//h1[text()='File upload']")
    public static WebElement title;

    public FileUploadPage(WebDriver driver) {
        this.driver = driver;
    }

    public void isButtonTitle(String arg1, String arg2) {
        switch (arg1) {
            case "choose button":
                System.out.println((chooseButton.getText().equals(arg2)) ? arg1 + " has correct title PASSED" : arg1 + "has not correct title FAILED");
                break;
            case "reset button":
                System.out.println((resetButton.getText().equals(arg2)) ? arg1 + " has correct title PASSED" : arg1 + "has not correct title FAILED");
                break;
            case "file upload field":
                WebElement fileUploadFieldPlaceholder = driver.findElement(By.xpath("//input[@placeholder='" + arg2 + "']"));
                try {
                    fileUploadFieldPlaceholder.getText();
                    System.out.println(arg1 + " has correct placeholder PASSED");
                } catch (NoSuchElementException e) {
                    System.out.println(arg1 + " has not correct placeholder FAILED");
                }
                break;
        }
    }

    public void isEnabledElement(String arg1) {
        switch (arg1) {
            case "choose button":
                System.out.println((!(chooseButton.isSelected()) && chooseButton.isEnabled()) ? arg1 + " has not selected, but enabled PASSED" : arg1 + " has selected or not enabled FAILED");
                break;
            case "reset button":
                System.out.println((!(resetButton.isSelected()) && resetButton.isEnabled()) ? arg1 + " has not selected, but enabled PASSED" : arg1 + " has selected or not enabled FAILED");
                break;
            case "file upload field":
                System.out.println((!(fileUploadField.isSelected()) && fileUploadField.isEnabled()) ? arg1 + " has not selected, but enabled PASSED" : arg1 + " has selected or not enabled FAILED");
                break;
        }
    }

    public void clickElementIsWindowOpened(String arg1) {
        switch (arg1) {
            case "choose button":
                chooseButton.click();
                System.out.println(arg1 + " has clicked PASSED");
                break;
            case "reset button":
                resetButton.click();
                System.out.println(arg1 + " has clicked PASSED");
                break;
            case "file upload field":
                fileUploadField.click();
                System.out.println(arg1 + " has clicked PASSED");
                break;
        }
    }

    public void chooseUploadFiles(String arg1) {
        fileUploadField.sendKeys("src/Files Format/" + arg1);
    }

    public void isFileUpload(String arg1) throws Exception {
        System.out.println((autocompletePage.getInputFieldValue(fileUploadField).substring(17)).equals(arg1) ?
                arg1 + " has successfully uploaded PASSED" : arg1 + " has not uploaded FAILED");
    }

    public void isFileUploadFieldClear() throws Exception {
        System.out.println((autocompletePage.getInputFieldValue(fileUploadField)).equals("") ?
                "File upload field has cleared PASSED" : "File upload field has not cleared FAILED");
    }

    public void pressEnterAndCheckPage(String arg1, String arg2) {
        fileUploadField.sendKeys(Keys.ENTER);
        WebElement errorPage = driver.findElement(By.xpath("//h1"));
        try {
            System.out.println(((driver.getCurrentUrl().substring(36).equals(arg1)) && errorPage.getText().equals(arg2)) ?
                    arg1 + " has opened and title has displayed PASSED" : arg1 + " has not opened and title has displayed FAILED");
        } catch (NoSuchElementException e) {
            System.out.println(arg1 + " has opened but title has not displayed FAILED");
        }
    }
}