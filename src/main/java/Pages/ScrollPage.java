package Pages;

import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class ScrollPage {
    WebDriver driver;
    AutocompletePage autocompletePage = PageFactory.initElements(driver, AutocompletePage.class);
    @FindBy(id = "name")
    public static WebElement fullNameInput;
    @FindBy(id = "date")
    public static WebElement dateInput;

    public ScrollPage(WebDriver driver) {
        this.driver = driver;
    }

    public void hasScrollTextParagraphCheck(String arg1, String arg2) {
        try {
            WebElement paragraph = driver.findElement(By.xpath("//p[" + arg1.charAt(0) + "]"));
            System.out.println(paragraph.getText().equals(arg2) ? arg1 + " paragraph has had correct text PASSED" :
                    arg1 + " paragraph has not had correct text FAILED");
        } catch (NoSuchElementException e) {
            System.out.println("Something has gone wrong FAILED");
        }
    }

    public void hasScrollTitleTextCheck(String arg1, String arg2) {
        try {
            WebElement titleElement = driver.findElement(By.xpath("//label[text()='" + arg1 + "']"));
            System.out.println(titleElement.getText().equals(arg2) ? arg2 + " title has been correct PASSED" :
                    arg2 + " title has not been correct FAILED");
        } catch (NoSuchElementException e) {
            System.out.println("Something has gone wrong FAILED");
        }
    }

    public void hasScrollPlaceholderTextCheck(String arg1, String arg2) {
        switch (arg1) {
            case "Full Name":
                System.out.println(fullNameInput.getAttribute("placeholder").equals(arg2) ? "Placeholder has had correct text PASSED" :
                        "Placeholder has not had correct text FAILED");
                break;
            case "Date":
                System.out.println(dateInput.getAttribute("placeholder").equals(arg2) ? "Placeholder has had correct text PASSED" :
                        "Placeholder has not had correct text FAILED");
                break;
        }
    }

    public void hasScrollFieldUnselectedEnabledCheck(String arg1) {
        switch (arg1) {
            case "Full Name":
                System.out.println(!(fullNameInput.isSelected()) && fullNameInput.isEnabled() ? "Field has been unselected, enabled PASSED" :
                        "Field has not been unselected or enabled FAILED");
                break;
            case "Date":
                System.out.println(!(dateInput.isSelected()) && dateInput.isEnabled() ? "Field has been unselected, enabled PASSED" :
                        "Field has not been unselected or enabled FAILED");
                break;
        }
    }

    public void hasScrollFieldDataEnterCheck(String arg1, String arg2) throws Exception {
        switch (arg2) {
            case "full name":
                fullNameInput.sendKeys(arg1);
                System.out.println(autocompletePage.getInputFieldValue(fullNameInput).equals(arg1) ? "Data has entered PASSED" :
                        "Data has not entered FAILED");
                break;
            case "date":
                dateInput.sendKeys(arg1);
                System.out.println(autocompletePage.getInputFieldValue(dateInput).equals(arg1) ? "Data has entered PASSED" :
                        "Data has not entered FAILED");
                break;
        }
    }

    public void hasScrollFieldDeleteCheck(String arg1) {
        switch (arg1) {
            case "full name":
                fullNameInput.sendKeys(Keys.DELETE);
                break;
            case "date":
                dateInput.sendKeys(Keys.DELETE);
                break;
        }
    }

    public void hasScrollPageToCheck(String arg1) {
        JavascriptExecutor js = (JavascriptExecutor) driver;

        switch (arg1) {
            case "500 px down to the page bottom":
                js.executeScript("window.scrollBy(0,500)");
                break;
            case "250 px up to the page middle":
                js.executeScript("window.scrollBy(0,-250)");
                break;
            case "500 px up to the page top":
                js.executeScript("window.scrollBy(0,-500)");
                break;
            case "250 px down to the page middle":
                js.executeScript("window.scrollBy(0,250)");
                break;
        }
    }

    public void hasScrollPositionCheck(String arg1) {
        switch (arg1) {
            case "bottom":
                positionCheck(500L, arg1);
                break;
            case "middle":
                positionCheck(250L, arg1);
                break;
            case "top":
                positionCheck(0L, arg1);
                break;
            case "after refresh bottom": // offset by 3 px up has been accepted as norm (a feature)
                positionCheck(497L, arg1);
                break;
        }
    }

    public void positionCheck(Long arg1, String arg2) {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        System.out.println((long) js.executeScript("return window.pageYOffset;") == arg1 ?
                "Scroll has been in " + arg2 + " position PASSED" : "Scroll has not been in " + arg2 + " position FAILED");
    }
}