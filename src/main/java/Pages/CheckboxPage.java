package Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class CheckboxPage {
    WebDriver driver;

    @FindBy(id = "checkbox-1")
    public static WebElement checkbox1;
    @FindBy(id = "checkbox-2")
    public static WebElement checkbox2;
    @FindBy(id = "checkbox-3")
    public static WebElement checkbox3;

    public CheckboxPage(WebDriver driver) {
        this.driver = driver;
    }

    public void isCorrectTitle(String arg1, String arg2) {
        WebElement pageTitle = driver.findElement(By.xpath("//h1[text()='" + arg2 + "']"));
        try {
            if (pageTitle.getText().equals(arg2)) {
                System.out.println(arg1 + " page title has displayed correctly PASSED");
            }
        } catch (NoSuchElementException e) {
            System.out.println(arg1 + " page title has not displayed correctly FAILED");
        }
    }

    public void areCheckboxesNotSelected() {
        if (!(checkbox1.isSelected() && checkbox1.isSelected() && checkbox1.isSelected())) {
            System.out.println("All checkboxes has not selected PASSED");
        } else {
            System.out.println("All checkboxes has selected FAILED");
        }
    }

    public void areCheckboxesSelected() {
        if (checkbox1.isSelected() && checkbox1.isSelected() && checkbox1.isSelected()) {
            System.out.println("All checkboxes has selected PASSED");
        } else {
            System.out.println("All checkboxes has not selected FAILED");
        }
    }

    public void areClickOnCheckbox(String arg1) {
        switch (arg1) {
            case "Checkbox1":
                checkbox1.click();
                break;
            case "Checkbox2":
                checkbox2.click();
                break;
            case "Checkbox3":
                checkbox3.click();
                break;
        }
    }
}