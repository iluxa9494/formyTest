package Pages;

import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.StringSelection;
import java.io.FileInputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Properties;

public class DatepickerPage {
    WebDriver driver;
    @FindBy(xpath = "//input[@id='datepicker']")
    public static WebElement inputFieldDatepicker;
    @FindBy(xpath = "//h1[text()='Datepicker']")
    public static WebElement titleDatepicker;
    //calendar
    @FindBy(xpath = "//div[@class='datepicker datepicker-dropdown dropdown-menu datepicker-orient-left datepicker-orient-bottom']")
    public static WebElement calendarBody;
    //header elements
    @FindBy(xpath = "//a[@id='logo']")
    public static WebElement formyPage;
    @FindBy(xpath = "//h1[text()='Welcome to Formy']")
    public static WebElement welcomeTitle;
    @FindBy(xpath = "//h1[text()='Complete Web Form']")
    public static WebElement formTitle;
    @FindBy(xpath = "//a[text()='Form']")
    public static WebElement formPage;
    @FindBy(xpath = "//a[@id='navbarDropdownMenuLink']")
    public static WebElement headerDropdownComponents;
    LocalDate currentDate = LocalDate.now();

    //months
    String currentMonth = String.valueOf(currentDate.getMonth());
    LocalDate prevMonth = currentDate.minusMonths(1);
    String previousMonth = String.valueOf(prevMonth.getMonth());
    LocalDate forwardMonth = currentDate.plusMonths(1);
    String nextMonth = String.valueOf(forwardMonth.getMonth());
    //years
    LocalDate prevYear = currentDate.minusYears(1);
    String previousYear = String.valueOf(prevYear.getYear());
    LocalDate forwardYear = currentDate.plusYears(1);
    String nextYear = String.valueOf(forwardYear.getYear());
    //decades
    String previousDecade = "2010-2019";
    String nextDecade = "2030-2039";
    //centuries
    String previousCentury = "1900-1990";
    String nextCentury = "2100-2190";
    //millenniums
    String previousMillennium = "1000-1900";
    String nextMillennium = "3000-3900";

    public DatepickerPage(WebDriver driver) {
        this.driver = driver;
    }

    public String getOSValue() throws IOException {
        FileInputStream fis = new FileInputStream("src/main/resources/config.properties");
        Properties prop = new Properties();
        prop.load(fis);
        return prop.getProperty("os");
    }

    public void refreshPage() {
        driver.navigate().refresh();
    }

    public void goPage(String page) {
        WebElement choosePage = driver.findElement(By.xpath("//li/a[@class='btn btn-lg' and text()='" + page + "']"));
        choosePage.click();
    }

    public void isCalendarOpened() throws Exception {
        inputFieldDatepicker.click();
        isDropdownClose();
    }

    public void isDropdownClose() {
        try {
            if (calendarBody.isDisplayed()) {
                System.out.println("Calendar dropdown is opened");
            }
        } catch (NoSuchElementException e) {
            System.out.println("Calendar dropdown is closed");
        }
    }

    public void chooseElementIsOpened(String button, String date) throws Exception {
        if (button.equals("next") || button.equals("previous")) {
            if (date.equals("month")) {
                date = "day";
            }
            if (date.equals("year")) {
                date = "month";
            }
            if (date.equals("decade")) {
                date = "year";
            }
            if (date.equals("century")) {
                date = "decade";
            }
            if (date.equals("millennium")) {
                date = "centurie";
            }
            if (button.equals("previous")) {
                button = "prev";
            }
            WebElement choseButton = driver.findElement(By.xpath("//div[@class='datepicker-" + date + "s']//th[@class='" + button + "']"));
            choseButton.click();
        }
        if (button.equals("Jan")) {
            WebElement choseButton = driver.findElement(By.xpath("//div[@class='datepicker-months']//span[contains(text(),'" + button + "')]"));
            choseButton.click();
        }
        WebElement calendarSwitcher = driver.findElement(By.xpath("//div[@class='datepicker-" + date + "s']//th[@class='datepicker-switch']"));
        String getCurrentValueFromCalendar = calendarSwitcher.getText();
        if (date.equals("day")) {
            getCurrentValueFromCalendar = getCurrentValueFromCalendar.substring(0, getCurrentValueFromCalendar.length() - 5).toUpperCase();
        }
        switch (button) {
            case "prev":
                switch (date) {
                    case "day":
                        calendarConditions(getCurrentValueFromCalendar, previousMonth);
                        break;
                    case "month":
                        calendarConditions(getCurrentValueFromCalendar, previousYear);
                        break;
                    case "year":
                        calendarConditions(getCurrentValueFromCalendar, previousDecade);
                        break;
                    case "decade":
                        calendarConditions(getCurrentValueFromCalendar, previousCentury);
                        break;
                    case "centurie":
                        calendarConditions(getCurrentValueFromCalendar, previousMillennium);
                        break;
                }
                break;
            case "next":
                switch (date) {
                    case "day":
                        calendarConditions(getCurrentValueFromCalendar, nextMonth);
                        break;
                    case "month":
                        calendarConditions(getCurrentValueFromCalendar, nextYear);
                        break;
                    case "year":
                        calendarConditions(getCurrentValueFromCalendar, nextDecade);
                        break;
                    case "decade":
                        calendarConditions(getCurrentValueFromCalendar, nextCentury);
                        break;
                    case "centurie":
                        calendarConditions(getCurrentValueFromCalendar, nextMillennium);
                        break;
                }
                break;
        }
    }

    public void calendarConditions(String calendarValue, String realValue) {
        if (calendarValue.equals(realValue)) {
            System.out.println("Calendar and real value has matched PASSED");
        } else {
            System.out.println("Calendar and real value hasn't matched FAILED");
        }
    }

    public void pickAndCheckCalendarDateIsDisplayed(String date) throws Exception {
        switch (date) {
            case "1th day":
                WebElement firstCalendarDay = driver.findElement(By.xpath("//tr[1]//td[text()='1']"));
                firstCalendarDay.click();
                isDropdownClose();
                getCalendarPlaceholderValueByClipboard(date);
                break;

            case "current date":
                WebElement currentCalendarDay = driver.findElement(By.xpath("//td[@class='today day']"));
                currentCalendarDay.click();
                isDropdownClose();
                getCalendarPlaceholderValueByClipboard(date);
                break;
        }
    }

    public String getInputFieldValue() throws Exception {
        StringSelection sS = new StringSelection("");
        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(sS, null);
        String osType = getOSValue();
        if (osType.equals("macOS")) {
            inputFieldDatepicker.sendKeys(Keys.chord(Keys.COMMAND + "a"));
            inputFieldDatepicker.sendKeys(Keys.chord(Keys.COMMAND + "c"));
        }
        if (osType.equals("windowsOS") || osType.equals("linuxOS")) {
            inputFieldDatepicker.sendKeys(Keys.chord(Keys.CONTROL + "a"));
            inputFieldDatepicker.sendKeys(Keys.chord(Keys.CONTROL + "c"));
        }
        Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
        return (String) clipboard.getData(DataFlavor.stringFlavor);
    }

    public void currentDateCheck() throws Exception {
        DateTimeFormatter format = DateTimeFormatter.ofPattern("MM/dd/YYYY");
        String inputCalendarPlaceholderValue = getInputFieldValue();
        String dateFormat = currentDate.format(format);
        if (inputCalendarPlaceholderValue.equals(dateFormat)) {
            System.out.println("Displays correctly PASSED");
        } else {
            System.out.println("Displays incorrectly FAILED");
        }
    }

    public void checkCalendarValue(String arg1, String arg2) throws Exception {
        if (arg1.equals("current") && arg2.equals("date")) {
            currentDateCheck();
        }

        if (arg1.equals("01/01/2021")) {
            String inputCalendarPlaceholderValue = getInputFieldValue();
            if (inputCalendarPlaceholderValue.equals(arg1)) {
                System.out.println(arg1 + " " + arg2 + " displays correctly PASSED");
            } else {
                System.out.println(arg1 + " " + arg2 + " displays incorrectly FAILED");
            }
        }
        if ((arg1.equals("current") || arg1.equals("previous")) && arg2.equals("month")) {
            WebElement calendarSwitcher = driver.findElement(By.xpath("//div[@class='datepicker-days']//th[@class='datepicker-switch']"));
            String getCurrentValueFromCalendar = calendarSwitcher.getText();
            String getSwitcherValue = getCurrentValueFromCalendar.substring(0, getCurrentValueFromCalendar.length() - 5).toUpperCase();
            switch (arg1) {
                case "current":
                    if (getSwitcherValue.equals(currentMonth)) {
                        System.out.println(arg1 + " " + arg2 + " displays correctly PASSED");
                    } else {
                        System.out.println(arg1 + " " + arg2 + " displays incorrectly FAILED");
                    }
                    break;
                case "previous":
                    if (getSwitcherValue.equals(previousMonth)) {
                        System.out.println(arg1 + " " + arg2 + " displays correctly PASSED");
                    } else {
                        System.out.println(arg1 + " " + arg2 + " displays incorrectly FAILED");
                    }
                    break;
            }
        }
    }

    public void getCalendarPlaceholderValueByClipboard(String date) throws Exception {
        switch (date) {
            case "1th day":
                String inputCalendarPlaceholderValue = getInputFieldValue();
                String firstDayCheck = "/01/";
                String getDayFromPlaceholderValue = inputCalendarPlaceholderValue.substring(2, 6);
                if (getDayFromPlaceholderValue.equals(firstDayCheck)) {
                    System.out.println("The " + date + " has displayed in the input field PASSED");
                } else {
                    System.out.println("The " + date + " hasn't displayed in the input field FAILED");
                }
                break;

            case "current date":
                currentDateCheck();
                break;
        }
    }

    public void chooseAndCheckCurrentYearIsDisplayed(String arg1, String arg2, String arg3, String arg4, String... arg5) throws Exception { //переделать

        if (arg1.equals("month") || arg1.equals("year") || arg1.equals("decade") || arg1.equals("century")) {

            if (arg1.equals("month")) {
                arg1 = "day";
                WebElement dateSwitcher = driver.findElement(By.xpath("//div[@class='datepicker-" + arg1 + "s']//th[@class='datepicker-switch']"));
                dateSwitcher.click();
                arg1 = "month";
            }
            if (arg1.equals("year")) {
                arg1 = "month";
                WebElement dateSwitcher = driver.findElement(By.xpath("//div[@class='datepicker-" + arg1 + "s']//th[@class='datepicker-switch']"));
                dateSwitcher.click();
                arg1 = "year";
            }
            if (arg1.equals("decade")) {
                arg1 = "year";
                WebElement dateSwitcher = driver.findElement(By.xpath("//div[@class='datepicker-" + arg1 + "s']//th[@class='datepicker-switch']"));
                dateSwitcher.click();
                arg1 = "decade";
            }
            if (arg1.equals("century")) {
                arg1 = "decade";
                WebElement dateSwitcher = driver.findElement(By.xpath("//div[@class='datepicker-" + arg1 + "s']//th[@class='datepicker-switch']"));
                dateSwitcher.click();
                arg1 = "centurie";
            }
            WebElement dateSwitcherAfterChanging = driver.findElement(By.xpath("//div[@class='datepicker-" + arg1 + "s']//th[@class='datepicker-switch']"));
            String switcherValueType1 = dateSwitcherAfterChanging.getText();
            try {
                if (switcherValueType1.equals(arg3)) {
                    for (String a : arg5) {
                        WebElement tableDateElement = driver.findElement(By.xpath("//div[@class='datepicker-" + arg1 + "s']//span[text()='" + a + "']"));
                        tableDateElement.getText();
                    }
                    System.out.println(arg3 + " and " + arg4 + " have displayed PASSED");
                }
            } catch (NoSuchElementException e) {
                System.out.println(arg3 + " and " + arg4 + " haven't displayed FAILED");
            }
        }

        if (arg1.equals("1000") || arg1.equals("1900") || arg1.equals("2010") || arg1.equals("2030") || arg1.equals("2100") || arg1.equals("3000")) {
            if (arg2.equals("year") || arg2.equals("decade") || arg2.equals("century")) {
                if (arg2.equals("century")) {
                    arg2 = "centurie";
                }
                WebElement tableDateSwitcher = driver.findElement(By.xpath("//div[@class='datepicker-" + arg2 + "s']//span[text()=" + arg1 + "]"));
                tableDateSwitcher.click();
                try {
                    WebElement getDateSwitcherValue = driver.findElement(By.xpath("//div[@class='datepicker-" + arg4 + "']//th[text()='" + arg3 + "']"));
                    getDateSwitcherValue.getText();
                    for (String a : arg5) {
                        WebElement tableDateElement = driver.findElement(By.xpath("//div[@class='datepicker-" + arg4 + "']//span[text()='" + a + "']"));
                        tableDateElement.getText();
                    }
                    System.out.println(arg3 + " and " + arg4 + " have displayed PASSED");
                } catch (NoSuchElementException e) {
                    System.out.println(arg3 + " and " + arg4 + " haven't displayed FAILED");
                }
            }
        }
    }

    public void typeAndPress(String arg1) {
        inputFieldDatepicker.sendKeys(arg1, Keys.ENTER);
        System.out.println(arg1 + " has been typed PASSED");
    }

    public void clickOnTitleCheck() throws Exception {
        titleDatepicker.click();
        isDropdownClose();
    }

    //header
    public void isPageOpened(String arg1, String arg2) {
        switch (arg1) {
            case "Formy":
                formyPage.click();
                break;
            case "Form":
                formPage.click();
                break;
            case "Backward":
                driver.navigate().back();
                break;
            case "Forward":
                driver.navigate().forward();
                break;
            case "Refresh":
                driver.navigate().refresh();
                break;
            default:
                WebElement clickOnComponentElement = driver.findElement(By.xpath("//a[@class='dropdown-item' and text()='" + arg1 + "']"));
                clickOnComponentElement.click();
                break;
        }
        switch (arg2) {
            case "Welcome to Formy":
                try {
                    welcomeTitle.isDisplayed();
                    System.out.println(arg2 + " is opened PASSED");
                } catch (NoSuchElementException e) {
                    System.out.println(arg2 + " is not opened FAILED");
                }
                break;
            default:
                String getURLValue = driver.getCurrentUrl();
                if (getURLValue.substring(36).equals(arg2)) {
                    System.out.println(arg2 + " is opened PASSED");
                } else {
                    System.out.println(arg2 + " is not opened FAILED");
                }
        }
    }

    public void output(WebElement arg1, String arg2) {
        try {
            arg1.getText();
            System.out.println(arg2 + " has opened");
        } catch (NoSuchElementException e) {
            System.out.println(arg2 + " has not opened");
        }
    }

    public void isPage(String arg1) { //byTitle
        switch (arg1) {
            case "Buttons":
                WebElement buttonPrimary = driver.findElement(By.xpath("//button[@type='button' and text()='Primary']"));
                output(buttonPrimary, arg1);
                break;
            case "Checkbox":
                WebElement pageTitleCheckbox = driver.findElement(By.xpath("//h1[text()='Checkboxes']"));
                output(pageTitleCheckbox, arg1);
                break;
            case "Drag and Drop":
                WebElement pageTitleDragDrop = driver.findElement(By.xpath("//h1[text()='Drag the image into the box']"));
                output(pageTitleDragDrop, arg1);
                break;
            case "Enabled and disabled elements":
                WebElement pageTitleEnabled = driver.findElement(By.xpath("//h1[text()='Enabled and Disabled elements']"));
                output(pageTitleEnabled, arg1);
                break;
            case "File Upload":
                WebElement pageTitleFileUpload = driver.findElement(By.tagName("h1"));
                output(pageTitleFileUpload, arg1);
                break;
            case "Key and Mouse Press":
                WebElement pageTitleKey = driver.findElement(By.xpath("//h1[text()='Keyboard and Mouse Input']"));
                output(pageTitleKey, arg1);
                break;
            case "Page Scroll":
                WebElement pageTitlePageScroll = driver.findElement(By.xpath("//h1[text()='Large page content']"));
                output(pageTitlePageScroll, arg1);
                break;
            case "Radio Button":
                WebElement pageTitleRadioButtons = driver.findElement(By.xpath("//h1[text()='Radio buttons']"));
                output(pageTitleRadioButtons, arg1);
                break;
            case "Thanks":
                WebElement pageTitleThanks = driver.findElement(By.xpath("//h1[text()='Thanks for submitting your form']"));
                output(pageTitleThanks, arg1);
                break;

            default:
                WebElement findElementsInComponentsDropdown = driver.findElement(By.xpath("//h1[text()='" + arg1 + "']"));
                output(findElementsInComponentsDropdown, arg1);
                break;
        }
    }

    public void headerComponentsCheck(String arg1, String... arg2) {
        String getComponentsName = headerDropdownComponents.getText();
        if (getComponentsName.equals(arg1)) {
            headerDropdownComponents.click();
        } else {
            System.out.println("Wrong button name components in header FAILED");
        }
        try {
            for (String a : arg2) {
                WebElement findElementsInComponentsDropdown = driver.findElement(By.xpath("//a[@class='dropdown-item' and text()='" + a + "']"));
                findElementsInComponentsDropdown.getText();
            }
            System.out.println("all elements are in components dropdown PASSED");
        } catch (NoSuchElementException e) {
            System.out.println("not all elements are in components dropdown FAILED");
        }
    }
}