package Pages;

import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class FormPage {
    WebDriver driver;
    AutocompletePage autocompletePage = PageFactory.initElements(driver, AutocompletePage.class);

    @FindBy(xpath = "//label[@for='first-name']")
    public static WebElement firstNameTitle;
    @FindBy(xpath = "//label[@for='last-name']")
    public static WebElement lastNameTitle;
    @FindBy(xpath = "//label[@for='job-title']")
    public static WebElement jobTitle;
    @FindBy(xpath = "//label[text()='Highest level of education']")
    public static WebElement educationTitle;
    @FindBy(xpath = "//label[text()='Sex']")
    public static WebElement sexTitle;
    @FindBy(xpath = "//label[@for='select-menu']")
    public static WebElement experienceTitle;
    @FindBy(xpath = "//label[text()='Date']")
    public static WebElement dateTitle;
    @FindBy(xpath = "//a[text()='Submit']")
    public static WebElement submitButton;
    @FindBy(id = "select-menu")
    public static WebElement experienceSelector;
    @FindBy(id = "radio-button-1")
    public static WebElement radioButton1;
    @FindBy(id = "radio-button-2")
    public static WebElement radioButton2;
    @FindBy(id = "radio-button-3")
    public static WebElement radioButton3;
    @FindBy(id = "first-name")
    public static WebElement firstNameInput;
    @FindBy(id = "last-name")
    public static WebElement lastNameInput;
    @FindBy(id = "job-title")
    public static WebElement jobInput;
    @FindBy(id = "checkbox-1")
    public static WebElement checkbox1;
    @FindBy(id = "checkbox-2")
    public static WebElement checkbox2;
    @FindBy(id = "checkbox-3")
    public static WebElement checkbox3;
    @FindBy(xpath = "//option[text()='Select an option']")
    public static WebElement selectorSelectAnOption;
    @FindBy(xpath = "//option[text()='0-1']")
    public static WebElement selector01;
    @FindBy(xpath = "//option[text()='2-4']")
    public static WebElement selector24;
    @FindBy(xpath = "//option[text()='5-9']")
    public static WebElement selector59;
    @FindBy(xpath = "//option[text()='10+']")
    public static WebElement selector10plus;

    public FormPage(WebDriver driver) {
        this.driver = driver;
    }

    public void hasElementPageTitle(String arg1, String arg2) {
        switch (arg1) {
            case "first name input":
                compareTitles(firstNameTitle, arg2);
                break;
            case "last name input":
                compareTitles(lastNameTitle, arg2);
                break;
            case "job title input":
                compareTitles(jobTitle, arg2);
                break;
            case "education radio buttons":
                compareTitles(educationTitle, arg2);
                break;
            case "sex checkboxes":
                compareTitles(sexTitle, arg2);
                break;
            case "experience selector":
                compareTitles(experienceTitle, arg2);
                break;
            case "input date":
                compareTitles(dateTitle, arg2);
                break;
            case "submit button":
                compareTitles(submitButton, arg2);
                break;
        }
    }

    public void compareTitles(WebElement arg1, String arg2) {
        System.out.println(arg1.getText().equals(arg2) ? "Title has a " + arg2 + " text PASSED" :
                "Title has not a " + arg2 + " text FAILED");
    }

    public void hasElementPagePlaceholders(String arg1, String arg2) {
        switch (arg1) {
            case "first name input":
                comparePlaceholders(arg2);
                break;
            case "last name input":
                comparePlaceholders(arg2);
                break;
            case "job title input":
                comparePlaceholders(arg2);
                break;
            case "input date":
                comparePlaceholders(arg2);
                break;
        }
    }

    public void comparePlaceholders(String arg1) {
        WebElement inputFieldElements = driver.findElement(By.xpath("//input[@placeholder='" + arg1 + "']"));
        try {
            System.out.println(inputFieldElements.isDisplayed() ? "Placeholder has a " + arg1 + " text PASSED" :
                    "Placeholder has not a " + arg1 + " text FAILED");
        } catch (NoSuchElementException e) {
            System.out.println(arg1 + " placeholder has absent FAILED");
        }
    }

    public void isFieldTextCheck(String arg1) {
        WebElement selected = driver.findElement(By.xpath("//option[text()='" + arg1 + "']"));
        try {
            System.out.println(selected.getText().equals(arg1) ? "Experience selector has a " + arg1 + " field text PASSED" :
                    arg1 + "Experience selector has not a " + arg1 + " field text FAILED");
        } catch (NoSuchElementException e) {
            System.out.println("Element experience selector has absent FAILED");
        }
    }

    public void isFormElementClick(String arg1) {
        switch (arg1) {
            case "experience selector":
                experienceSelector.click();
                break;
            case "High School radio button":
                radioButton1.click();
                break;
            case "College radio button":
                radioButton2.click();
                break;
            case "Grad School radio button":
                radioButton3.click();
                break;
            case "Male checkbox":
                checkbox1.click();
                break;
            case "Female checkbox":
                checkbox2.click();
                break;
            case "Prefer not to say checkbox":
                checkbox3.click();
                break;
            case "Select an option":
                selectorSelectAnOption.click();
                break;
            case "0-1":
                selector01.click();
                break;
            case "2-4":
                selector24.click();
                break;
            case "5-9":
                selector59.click();
                break;
            case "10+":
                selector10plus.click();
                break;
            case "submit button":
                submitButton.click();
                break;
        }
    }

    public void elementHasOptionsCheck() {
        System.out.println(!(!(selectorSelectAnOption.isSelected()) && selector01.isSelected() && selector24.isSelected()
                && selector59.isSelected() && selector10plus.isSelected()) ? "Experience selector has correct elements PASSED"
                : "Experience selector has incorrect elements FAILED");
    }

    public void hasEmptyElementCheck(String arg1) throws Exception {
        switch (arg1) {
            case "first name input":
                System.out.println(autocompletePage.getInputFieldValue(firstNameInput).equals("") ? arg1 + " has empty PASSED" :
                        arg1 + " has empty FAILED");
                break;
            case "last name input":
                System.out.println(autocompletePage.getInputFieldValue(lastNameInput).equals("") ? arg1 + " has empty PASSED" :
                        arg1 + " has empty FAILED");
                break;
            case "job title input":
                System.out.println(autocompletePage.getInputFieldValue(jobInput).equals("") ? arg1 + " has empty PASSED" :
                        arg1 + " has empty FAILED");
                break;
        }
    }

    public void hasEnterAndCheckValue(String arg1, String arg2) throws Exception {
        switch (arg2) {
            case "first name input":
                firstNameInput.sendKeys(arg1);
                String inputFirstNameValue = autocompletePage.getInputFieldValue(firstNameInput);
                autocompletePage.isDataMatchedCheck(inputFirstNameValue, arg1);
                break;
            case "last name input":
                lastNameInput.sendKeys(arg1);
                String inputLastNameValue = autocompletePage.getInputFieldValue(lastNameInput);
                autocompletePage.isDataMatchedCheck(inputLastNameValue, arg1);
                break;
            case "job title input":
                jobInput.sendKeys(arg1);
                String inputJobTitleValue = autocompletePage.getInputFieldValue(jobInput);
                autocompletePage.isDataMatchedCheck(inputJobTitleValue, arg1);
                break;
        }
    }

    public void copyClearPasteAndCheck(String arg1) throws Exception {
        switch (arg1) {
            case "first name input":
                autocompletePage.clearMethod(firstNameInput);
                break;
            case "last name input":
                autocompletePage.clearMethod(lastNameInput);
                break;
            case "job title input":
                autocompletePage.clearMethod(jobInput);
                break;
        }
    }

    public void hasDeleteAndCheck(String arg1) {
        switch (arg1) {
            case "first name input":
                firstNameInput.sendKeys(Keys.DELETE);
                break;
            case "last name input":
                lastNameInput.sendKeys(Keys.DELETE);
                break;
            case "job title input":
                jobInput.sendKeys(Keys.DELETE);
                break;
        }
    }

    public void hasSelectedAndUnselectedElementsCheck(String arg1, String arg2) {
        switch (arg2) {
            case "selected":
                switch (arg1) {
                    case "High School radio button":
                        selectElementCheck(radioButton1, arg1, arg2);
                        break;
                    case "College radio button":
                        selectElementCheck(radioButton2, arg1, arg2);
                        break;
                    case "Grad School radio button":
                        selectElementCheck(radioButton3, arg1, arg2);
                        break;
                    case "Male checkbox":
                        selectElementCheck(checkbox1, arg1, arg2);
                        break;
                    case "Female checkbox":
                        selectElementCheck(checkbox2, arg1, arg2);
                        break;
                    case "Prefer not to say checkbox":
                        selectElementCheck(checkbox3, arg1, arg2);
                        break;
                    case "Select an option":
                        selectElementCheck(selectorSelectAnOption, arg1, arg2);
                        break;
                    case "0-1":
                        selectElementCheck(selector01, arg1, arg2);
                        break;
                    case "2-4":
                        selectElementCheck(selector24, arg1, arg2);
                        break;
                    case "5-9":
                        selectElementCheck(selector59, arg1, arg2);
                        break;
                    case "10+":
                        selectElementCheck(selector10plus, arg1, arg2);
                        break;
                }
                break;
            case "unselected":
                switch (arg1) {
                    case "High School radio button":
                        unselectElementCheck(radioButton1, arg1, arg2);
                        break;
                    case "College radio button":
                        unselectElementCheck(radioButton2, arg1, arg2);
                        break;
                    case "Grad School radio button":
                        unselectElementCheck(radioButton3, arg1, arg2);
                        break;
                    case "Male checkbox":
                        unselectElementCheck(checkbox1, arg1, arg2);
                        break;
                    case "Female checkbox":
                        unselectElementCheck(checkbox2, arg1, arg2);
                        break;
                    case "Prefer not to say checkbox":
                        unselectElementCheck(checkbox3, arg1, arg2);
                        break;
                }
                break;
        }
    }

    public void selectElementCheck(WebElement arg1, String arg2, String arg3) {
        System.out.println(arg1.isSelected() ? arg2 + " has been " + arg3 + " PASSED" : arg2 + " has been " + arg3 + " FAILED");
    }

    public void unselectElementCheck(WebElement arg1, String arg2, String arg3) {
        System.out.println(!(arg1.isSelected()) ? arg2 + " has been " + arg3 + " PASSED" : arg2 + " has been " + arg3 + " FAILED");
    }

    public void hasFormElementEnabledCheck(String arg1) {
        System.out.println(submitButton.isEnabled() ? arg1 + " has been enabled" : arg1 + " has not been enabled");
    }

    public void hasFormElementValueCheck(String arg1, String arg2, String arg3) throws Exception {
        System.out.println(autocompletePage.getInputFieldValue(firstNameInput).equals(arg1) && autocompletePage.getInputFieldValue(lastNameInput).equals(arg2)
                && autocompletePage.getInputFieldValue(jobInput).equals(arg3) ? "All elements have had correct value PASSED" :
                "Elements have not had correct value FAILED");
    }
}