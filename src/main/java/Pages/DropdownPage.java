package Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class DropdownPage {
    WebDriver driver;
    @FindBy(id = "dropdownMenuButton")
    public static WebElement dropdownButton;
    @FindBy(className = "dropdown-menu show")
    public static WebElement dropdownList;

    public DropdownPage(WebDriver driver) {
        this.driver = driver;
    }

    public void isTitleDisplayed(String arg1) {
        System.out.println(dropdownButton.getText().equals(arg1) ? "Dropdown button has title " + arg1 + " PASSED" :
                "Dropdown button has not title " + arg1 + " FAILED");
    }

    public void isButtonSelectedOrEnabled() {
        System.out.println(dropdownButton.isEnabled() && !(dropdownButton.isSelected()) ?
                "Dropdown button has not selected but enabled PASSED" : "Dropdown button has not worked ok FAILED");
    }

    public void isClickDropdownButton() {
        dropdownButton.click();
    }

    public void isDropdownListDisplayed(String... arg1) {
        try {
            for (String a : arg1) {
                WebElement findElementsInButtonDropdown = driver.findElement(By.xpath("//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='" + a + "']"));
                findElementsInButtonDropdown.getText();
            }
            System.out.println("All elements have displayed in button dropdown PASSED");
        } catch (NoSuchElementException e) {
            System.out.println("All elements have not displayed in button dropdown FAILED");
        }
    }

    public void isListClosed() {
        try {
            System.out.println(dropdownList.isDisplayed() ? "Dropdown list has opened FAILED" : "Dropdown list has not worked ok FAILED");
        } catch (NoSuchElementException e) {
            System.out.println("Dropdown list has closed PASSED");
        }
    }

    public void isPageOpenedFromDropdownList(String arg1, String arg2) {
        WebElement findElementsInButtonDropdownList = driver.findElement(By.xpath("//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='" + arg1 + "']"));
        try {
            findElementsInButtonDropdownList.click();
            System.out.println(driver.getCurrentUrl().substring(36).equals(arg2) ? arg2 + " has opened PASSED" :
                    arg2 + " has not opened FAILED");
        } catch (NoSuchElementException e) {
            System.out.println(arg2 + " has not opened FAILED");
        }
    }
}