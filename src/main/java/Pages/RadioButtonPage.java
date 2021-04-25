package Pages;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class RadioButtonPage {
    WebDriver driver;

    @FindBy(id = "radio-button-1")
    public static WebElement radioButton1;
    @FindBy(xpath = "//input[@value='option2']")
    public static WebElement radioButton2;
    @FindBy(xpath = "//input[@value='option3']")
    public static WebElement radioButton3;
    @FindBy(xpath = "//label[@for='radio-button-1']")
    public static WebElement radioButton1Title;
    @FindBy(xpath = "//label[@for='radio-button-2']")
    public static WebElement radioButton2Title;
    @FindBy(xpath = "//label[@for='radio-button-3']")
    public static WebElement radioButton3Title;

    public RadioButtonPage(WebDriver driver) {
        this.driver = driver;
    }

    public void hasRadioButtonTitleCheck(String arg1, String arg2) {
        switch (arg1) {
            case "Radio button 1":
                elementCheck(radioButton1Title, arg2);
                break;
            case "Radio button 2":
                elementCheck(radioButton2Title, arg2);
                break;
            case "Radio button 3":
                elementCheck(radioButton3Title, arg2);
                break;
        }
    }

    public void elementCheck(WebElement arg1, String arg2) {
        System.out.println(arg1.getText().equals(arg2) ? arg2 + " has had correct title PASSED" : arg2 + " has not had correct title FAILED");
    }

    public void selectedElementCheck(WebElement arg1, String arg2) {
        System.out.println(arg1.isSelected() ? arg2 + " has been selected PASSED" : arg2 + " has not been selected FAILED");
    }

    public void unselectedElementCheck(WebElement arg1, String arg2) {
        System.out.println(!(arg1.isSelected()) ? arg2 + " has not been selected PASSED" : arg2 + " has been selected FAILED");
    }

    public void hasRadioButtonSelectionCheck(String arg1, String arg2) {
        switch (arg2) {
            case "selected":
                switch (arg1) {
                    case "Radio button 1":
                        selectedElementCheck(radioButton1, arg1);
                        break;
                    case "Radio button 2":
                        selectedElementCheck(radioButton2, arg1);
                        break;
                    case "Radio button 3":
                        selectedElementCheck(radioButton3, arg1);
                        break;
                }
                break;
            case "unselected":
                switch (arg1) {
                    case "Radio button 1":
                        unselectedElementCheck(radioButton1, arg1);
                        break;
                    case "Radio button 2":
                        unselectedElementCheck(radioButton2, arg1);
                        break;
                    case "Radio button 3":
                        unselectedElementCheck(radioButton3, arg1);
                        break;
                }
                break;
        }
    }

    public void hasRadioButtonClickCheck(String arg1) {
        switch (arg1) {
            case "Radio button 1 radio button":
                radioButton1.click();
                break;
            case "Radio button 2 radio button":
                radioButton2.click();
                break;
            case "Radio button 3 radio button":
                radioButton3.click();
                break;
            case "Radio button 1 title":
                radioButton1Title.click();
                break;
            case "Radio button 2 title":
                radioButton2Title.click();
                break;
            case "Radio button 3 title":
                radioButton3Title.click();
                break;
        }
    }

    public void hasRadioButtonEscCheck(){
        radioButton1.sendKeys(Keys.ESCAPE);
    }

    public void hasRadioButtonEnterCheck(){
        radioButton1.sendKeys(Keys.ENTER);
    }


}