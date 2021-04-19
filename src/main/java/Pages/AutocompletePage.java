package Pages;

import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;

import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.StringSelection;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class AutocompletePage {
    @FindBy(id = "autocomplete")
    public static WebElement inputFieldAddress;
    @FindBy(id = "street_number")
    public static WebElement inputFieldStreetAddress;
    @FindBy(id = "route")
    public static WebElement inputFieldStreetAddress2;
    @FindBy(id = "locality")
    public static WebElement inputFieldCity;
    @FindBy(id = "administrative_area_level_1")
    public static WebElement inputFieldState;
    @FindBy(id = "postal_code")
    public static WebElement inputFieldZipCode;
    @FindBy(id = "country")
    public static WebElement inputFieldCountry;
    @FindBy(xpath = "//h1[text()='Autocomplete']")
    public static WebElement titleAutocomplete;
    @FindBy(xpath = "//div[@class='pac-item'][1]")
    public static WebElement dropdownList;
    @FindBy(xpath = "//div[@class='pac-item'][2]")
    public static WebElement dropdownList2Element;
    @FindBy(xpath = "//div[@class='pac-item'][3]")
    public static WebElement dropdownList3Element;
    @FindBy(xpath = "//div[@class='pac-item'][4]")
    public static WebElement dropdownList4Element;
    @FindBy(xpath = "//div[@class='pac-item'][5]")
    public static WebElement dropdownList5Element;

    WebDriver driver;

    public AutocompletePage(WebDriver driver) {
        this.driver = driver;
    }

    public String getOSValue() throws IOException {
        FileInputStream fis = new FileInputStream("src/main/resources/config.properties");
        Properties prop = new Properties();
        prop.load(fis);
        return prop.getProperty("os");
    }

    public String getInputFieldValue(WebElement arg1) throws Exception {
        StringSelection sS = new StringSelection("");
        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(sS, null);
        String osType = getOSValue();
        if (osType.equals("macOS")) {
            arg1.sendKeys(Keys.chord(Keys.COMMAND + "a"));
            arg1.sendKeys(Keys.chord(Keys.COMMAND + "c"));
        }
        if (osType.equals("windowsOS") || osType.equals("linuxOS")) {
            arg1.sendKeys(Keys.chord(Keys.CONTROL + "a"));
            arg1.sendKeys(Keys.chord(Keys.CONTROL + "c"));
        }
        Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
        return (String) clipboard.getData(DataFlavor.stringFlavor);
    }

    public void pasteValueToInputField(WebElement arg1) throws Exception {
        String osType = getOSValue();
        if (osType.equals("macOS")) {
            arg1.sendKeys(Keys.chord(Keys.COMMAND + "v"));
        }
        if (osType.equals("windowsOS") || osType.equals("linuxOS")) {
            arg1.sendKeys(Keys.chord(Keys.CONTROL + "v"));
        }
    }

    public String isEmptyPartCheck(String arg1) {
        if (arg1.equals("")) {
            return "empty";
        } else {
            return "full";
        }
    }

    public void isDataMatchedCheck(String arg1, String arg2) {
        if (arg1.equals(arg2)) {
            System.out.println("Entered data has matched PASSED");
        } else {
            System.out.println("Entered data has not matched FAILED");
        }

    }

    public void isDropdownDisplayedCheck(WebElement arg1, String arg2) {
        if (!(arg1.getText().equals(""))) {
            if (arg2.equals("Address")) {
                System.out.println("Dropdown of " + arg2 + " field has displayed PASSED");
            } else {
                System.out.println("Dropdown of " + arg2 + " field has displayed FAILED");
            }
        } else {
            if (arg2.equals("Address")) {
                System.out.println("Dropdown of " + arg2 + " field has not displayed FAILED");
            } else {
                System.out.println("Dropdown of " + arg2 + " field has not displayed PASSED ");
            }
        }
    }

    public void isAllFieldsEmptyCheck() throws Exception {
        String addressFieldValue = getInputFieldValue(inputFieldAddress);
        String addressResult = isEmptyPartCheck(addressFieldValue);

        String streetAddressFieldValue = getInputFieldValue(inputFieldStreetAddress);
        String streetAddressResult = isEmptyPartCheck(streetAddressFieldValue);

        String streetAdress2FieldValue = getInputFieldValue(inputFieldStreetAddress2);
        String streetAddress2Result = isEmptyPartCheck(streetAdress2FieldValue);

        String cityFieldValue = getInputFieldValue(inputFieldCity);
        String cityResult = isEmptyPartCheck(cityFieldValue);

        String stateFieldValue = getInputFieldValue(inputFieldState);
        String stateResult = isEmptyPartCheck(stateFieldValue);

        String zipCodeFieldValue = getInputFieldValue(inputFieldZipCode);
        String zipCodeResult = isEmptyPartCheck(zipCodeFieldValue);

        String countryFieldValue = getInputFieldValue(inputFieldCountry);
        String countryResult = isEmptyPartCheck(countryFieldValue);
        if (addressResult.equals("empty") && streetAddressResult.equals("empty") && streetAddress2Result.equals("empty") &&
                cityResult.equals("empty") && stateResult.equals("empty") && zipCodeResult.equals("empty") && countryResult.equals("empty")) {
            System.out.println("All fields are empty PASSED");
        } else {
            System.out.println("All fields are not empty FAILED");
        }
    }

    public void enterDataInField(String arg1, String arg2) throws Exception {
        switch (arg2) {
            case "Address":
                inputFieldAddress.sendKeys(arg1);
                String inputFieldAddressValue = getInputFieldValue(inputFieldAddress);
                isDataMatchedCheck(inputFieldAddressValue, arg1);
                break;
            case "Street address":
                inputFieldStreetAddress.sendKeys(arg1);
                String inputFieldStreetAddressValue = getInputFieldValue(inputFieldStreetAddress);
                isDataMatchedCheck(inputFieldStreetAddressValue, arg1);
                break;
            case "Street address 2":
                inputFieldStreetAddress2.sendKeys(arg1);
                String inputFieldStreetAddress2Value = getInputFieldValue(inputFieldStreetAddress2);
                isDataMatchedCheck(inputFieldStreetAddress2Value, arg1);
                break;
            case "City":
                inputFieldCity.sendKeys(arg1);
                String inputFieldCityValue = getInputFieldValue(inputFieldCity);
                isDataMatchedCheck(inputFieldCityValue, arg1);
                break;
            case "State":
                inputFieldState.sendKeys(arg1);
                String inputFieldStateValue = getInputFieldValue(inputFieldState);
                isDataMatchedCheck(inputFieldStateValue, arg1);
                break;
            case "Zip code":
                inputFieldZipCode.sendKeys(arg1);
                String inputFieldZipCodeValue = getInputFieldValue(inputFieldZipCode);
                isDataMatchedCheck(inputFieldZipCodeValue, arg1);
                break;
            case "Country":
                inputFieldCountry.sendKeys(arg1);
                String inputFieldCountryValue = getInputFieldValue(inputFieldCountry);
                isDataMatchedCheck(inputFieldCountryValue, arg1);
                break;
        }
    }

    public void dropdownDisplayed(String arg1) throws InterruptedException {
        switch (arg1) {
            case "Address":
                inputFieldAddress.sendKeys(Keys.RIGHT);
                dropdownList.getText();
                inputFieldAddress.sendKeys(Keys.LEFT);
                dropdownList.getText();
                inputFieldAddress.click();
                dropdownList.getText();
                inputFieldAddress.sendKeys(Keys.SPACE);
                isDropdownDisplayedCheck(dropdownList, arg1);
                break;
            case "Street address":
                inputFieldStreetAddress.sendKeys(Keys.RIGHT);
                dropdownList.getText();
                inputFieldStreetAddress.sendKeys(Keys.LEFT);
                dropdownList.getText();
                inputFieldStreetAddress.click();
                dropdownList.getText();
                inputFieldStreetAddress.sendKeys(Keys.SPACE);
                isDropdownDisplayedCheck(dropdownList, arg1);
                break;
            case "Street address 2":
                inputFieldStreetAddress2.sendKeys(Keys.RIGHT);
                dropdownList.getText();
                inputFieldStreetAddress2.sendKeys(Keys.LEFT);
                dropdownList.getText();
                inputFieldStreetAddress2.click();
                dropdownList.getText();
                inputFieldStreetAddress2.sendKeys(Keys.SPACE);
                isDropdownDisplayedCheck(dropdownList, arg1);
                break;
            case "City":
                inputFieldCity.sendKeys(Keys.RIGHT);
                dropdownList.getText();
                inputFieldCity.sendKeys(Keys.LEFT);
                dropdownList.getText();
                inputFieldCity.click();
                dropdownList.getText();
                inputFieldCity.sendKeys(Keys.SPACE);
                isDropdownDisplayedCheck(dropdownList, arg1);
                break;
            case "State":
                inputFieldState.sendKeys(Keys.RIGHT);
                dropdownList.getText();
                inputFieldState.sendKeys(Keys.LEFT);
                dropdownList.getText();
                inputFieldState.click();
                dropdownList.getText();
                inputFieldState.sendKeys(Keys.SPACE);
                isDropdownDisplayedCheck(dropdownList, arg1);
                break;
            case "Zip code":
                inputFieldZipCode.sendKeys(Keys.RIGHT);
                dropdownList.getText();
                inputFieldZipCode.sendKeys(Keys.LEFT);
                dropdownList.getText();
                inputFieldZipCode.click();
                dropdownList.getText();
                inputFieldZipCode.sendKeys(Keys.SPACE);
                isDropdownDisplayedCheck(dropdownList, arg1);
                break;
            case "Country":
                inputFieldCountry.sendKeys(Keys.RIGHT);
                dropdownList.getText();
                inputFieldCountry.sendKeys(Keys.LEFT);
                dropdownList.getText();
                inputFieldCountry.click();
                dropdownList.getText();
                inputFieldCountry.sendKeys(Keys.SPACE);
                isDropdownDisplayedCheck(dropdownList, arg1);
                break;
        }
    }

    public void isElementsInDropdownDisplayed(String arg1) {
        if ((dropdownList.getText().contains(arg1)) && (dropdownList2Element.getText().contains(arg1)) && (dropdownList3Element.getText().contains(arg1)) &&
                (dropdownList4Element.getText().contains(arg1)) && (dropdownList5Element.getText().contains(arg1))) {
            System.out.println("All 5 elements of dropdown list have contained " + arg1 + " in its titles PASSED");
        } else {
            System.out.println("All 5 elements of dropdown list have not contained " + arg1 + " in its titles FAILED");
        }
    }

    public void isAutocompleteCorrect(String arg1, String arg2, String arg3, String arg4) throws Exception {
        inputFieldAddress.sendKeys(Keys.RIGHT);
        dropdownList.getText();
        inputFieldAddress.sendKeys(Keys.LEFT);
        dropdownList.getText();
        inputFieldAddress.click();
        dropdownList.getText();
        inputFieldAddress.sendKeys(Keys.SPACE);
        dropdownList.click();
        String addressFieldValue = getInputFieldValue(inputFieldAddress);
        String streetAddressValue = getInputFieldValue(inputFieldStreetAddress);
        String streetAddress2Value = getInputFieldValue(inputFieldStreetAddress2);
        String cityFieldValue = getInputFieldValue(inputFieldCity);
        String stateFieldValue = getInputFieldValue(inputFieldState);
        String zipCodeFieldValue = getInputFieldValue(inputFieldZipCode);
        String countryFieldValue = getInputFieldValue(inputFieldCountry);

        if (addressFieldValue.equals("Menlo Park, Калифорния, США")) {
            if (cityFieldValue.equals(arg2) && stateFieldValue.equals(arg3) && countryFieldValue.equals(arg4) && streetAddressValue.equals("")
                    && streetAddress2Value.equals("") && zipCodeFieldValue.equals("")) {
                System.out.println("City has got data Menlo Park, state - CA, country - USA and other fields are empty PASSED");
            } else {
                System.out.println("Some of fields have not satisfied case conditions FAILED");
            }
        }
    }

    public void refreshPageCheckFields() throws Exception {
        driver.navigate().refresh();
        isAllFieldsEmptyCheck();
    }

    public void backwardForwardPageSavingFieldsData(String arg1, String arg2, String arg3, String arg4, String arg5, String arg6, String arg7) throws Exception {
        titleAutocomplete.getText();
        String inputFieldAddressValue = getInputFieldValue(inputFieldAddress);
        String streetAddressFieldValue = getInputFieldValue(inputFieldStreetAddress);
        String streetAdress2FieldValue = getInputFieldValue(inputFieldStreetAddress2);
        String cityFieldValue = getInputFieldValue(inputFieldCity);
        String stateFieldValue = getInputFieldValue(inputFieldState);
        String zipCodeFieldValue = getInputFieldValue(inputFieldZipCode);
        String countryFieldValue = getInputFieldValue(inputFieldCountry);
        if (inputFieldAddressValue.equals(arg1) && streetAddressFieldValue.equals(arg2) && streetAdress2FieldValue.equals(arg3) && cityFieldValue.equals(arg4) &&
                stateFieldValue.equals(arg5) && zipCodeFieldValue.equals(arg6) && countryFieldValue.equals(arg7)) {
            System.out.println("All fields have saved its data PASSED");
        } else {
            System.out.println("All fields have not saved its data FAILED");
        }
    }

    public void isTitleDisplayedOk(String arg1) {
        WebElement titleForm = driver.findElement(By.xpath("//h1[text()='" + arg1 + "']"));
        titleForm.getText();
    }

    public void isFieldTitlePlaceholderDisplayedCorrectly(String arg1, String arg2, String arg3) {
        if (arg2.equals("title")) {
            WebElement fieldTitle = driver.findElement(By.xpath("//label[text()='" + arg1 + "']"));
            try {
                fieldTitle.getText();
                System.out.println("Title " + arg1 + " has displayed correctly PASSED");
            } catch (NoSuchElementException e) {
                System.out.println("Title " + arg1 + " has not displayed correctly FAILED");
            }
        }
        if (arg2.equals("placeholder")) {
            WebElement placeholderField = driver.findElement(By.xpath("//input[@placeholder='" + arg3 + "']"));
            try {
                placeholderField.getText();
                System.out.println("Placeholder " + arg3 + " has displayed correctly PASSED");
            } catch (NoSuchElementException e) {
                System.out.println("Placeholder " + arg3 + " has not displayed correctly FAILED");
            }
        }
    }

    public void copyDataFromField(String arg1) throws Exception {
        switch (arg1) {
            case "Address":
                clearMethod(inputFieldAddress);
                break;
            case "Street address":
                clearMethod(inputFieldStreetAddress);
                break;
            case "Street address 2":
                clearMethod(inputFieldStreetAddress2);
                break;
            case "City":
                clearMethod(inputFieldCity);
                break;
            case "State":
                clearMethod(inputFieldState);
                break;
            case "Zip code":
                clearMethod(inputFieldZipCode);
                break;
            case "Country":
                clearMethod(inputFieldCountry);
                break;
        }
    }

    public void clearMethod(WebElement arg1 ) throws Exception {
        String copyDataFromField = getInputFieldValue(arg1);
        arg1.sendKeys(Keys.DELETE);
        pasteValueToInputField(arg1);
        String copyDataFromFieldFinal = getInputFieldValue(arg1);
        System.out.println(copyDataFromField.equals(copyDataFromFieldFinal)? "Copy/paste/delete functions have worked PASSED"
                :"Copy/paste/delete functions have not worked FAILED");
    }

    public void clearViaDelete(String arg1) {
        switch (arg1) {
            case "Address":
                inputFieldAddress.sendKeys(Keys.DELETE);
                break;
            case "Street address":
                inputFieldStreetAddress.sendKeys(Keys.DELETE);
                break;
            case "Street address 2":
                inputFieldStreetAddress2.sendKeys(Keys.DELETE);
                break;
            case "City":
                inputFieldCity.sendKeys(Keys.DELETE);
                break;
            case "State":
                inputFieldState.sendKeys(Keys.DELETE);
                break;
            case "Zip code":
                inputFieldZipCode.sendKeys(Keys.DELETE);
                break;
            case "Country":
                inputFieldCountry.sendKeys(Keys.DELETE);
                break;
        }
    }
}