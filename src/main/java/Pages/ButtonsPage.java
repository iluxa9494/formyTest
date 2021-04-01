package Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ButtonsPage {

    @FindBy(id = "btnGroupDrop1")
    public static WebElement dropdownButton;
    @FindBy(xpath = "//div[@class='dropdown-menu show']")
    public static WebElement dropdownList;
    @FindBy(xpath = "//a[text()= 'Dropdown link 1']")
    public static WebElement dropdownList1;
    @FindBy(xpath = "//a[text()= 'Dropdown link 2']")
    public static WebElement dropdownList2;

    WebDriver driver;

    public ButtonsPage(WebDriver driver) {
        this.driver = driver;
    }

    public void isTitleAbsent() {
        try {
            WebElement buttonsTitle = driver.findElement(By.xpath("//h1"));
            String pageTitle = buttonsTitle.getText();
            System.out.println("There is a page title '" + pageTitle + "' FAILED");
        } catch (NoSuchElementException e) {
            System.out.println("There are no any page titles PASSED");
        }
    }

    public void isCorrectButtonsTitle(String arg1) {
        if (arg1.equals("Dropdown")) {
            if (dropdownButton.getText().equals(arg1)) {
                System.out.println(arg1 + " button has a '" + arg1 + "' title PASSED");
            } else {
                System.out.println(arg1 + " button has not a correct title FAILED");
            }
        } else {
            try {
                WebElement buttonsTitle = driver.findElement(By.xpath("//button[text()='" + arg1 + "']"));
                String buttonsCurrentTitle = buttonsTitle.getText();
                System.out.println(arg1 + " button has a '" + buttonsCurrentTitle + "' title PASSED");
            } catch (NoSuchElementException e) {
                System.out.println(arg1 + " button has not a correct title FAILED");
            }
        }
    }

    public void isButtonsClickable(String arg1) {
        if (arg1.equals("Dropdown")) {
            if (dropdownButton.isEnabled() && dropdownButton.isDisplayed()) {
                dropdownButton.click();
                System.out.println(arg1 + " button is clickable PASSED");
            } else {
                System.out.println(arg1 + " button is not clickable FAILED");
            }
        } else {
            WebElement button = driver.findElement(By.xpath("//button[text()='" + arg1 + "']"));
            if (button.isEnabled() && button.isDisplayed()) {
                button.click();
                System.out.println(arg1 + " button is clickable PASSED");
            } else {
                System.out.println(arg1 + " button is not clickable FAILED");
            }
        }
    }

    public void isDropdownListOpened() {
        if (dropdownList.isDisplayed() && dropdownList1.isDisplayed() && dropdownList2.isDisplayed()) {
            System.out.println("Dropdown list with Dropdown link 1, Dropdown link 2 elements has opened PASSED");
        } else {
            System.out.println("Dropdown list with Dropdown link 1, Dropdown link 2 elements has not opened FAILED");
        }
    }
}