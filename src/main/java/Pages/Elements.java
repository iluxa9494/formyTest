package Pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class Elements {
 static WebDriver driver;
   // https://www.selenium.dev/documentation/en/webdriver/web_element/
    //Pages.WelcomePage
 //    private static SelenideElement namePage = $(".b-header-page"),
    public static String navigationBar = "//nav[@class='navbar navbar-expand-lg bg-light']",
    logoFormy = "//a[@id='logo']",
    hrefForm = "//a[@href='/form' and text()='Form']",
    dropDownMenuComponents = "//a[@id='navbarDropdownMenuLink']",
    titleWelcomeToFormy = "//h1[@class=\"display-3\" and text()='Welcome to Formy']",
    titleSiteDescription = "//p[@class='lead']",
    horizontalLine = "//hr[@class='my-4']",
    titlePointerOfTheListOfComponents = "//p[text()='Here are the list of all the components']",
    autocompleteComponent = "//a[@class='btn btn-lg' and text()='Autocomplete']",
    buttonsComponent = "//a[@class='btn btn-lg' and text()='Buttons']",
    checkboxComponent = "//a[@class='btn btn-lg' and text()='Checkbox']",
    datepickerComponent = "//a[@class='btn btn-lg' and text()='Datepicker']",
    dragAndDropComponent = "//a[@class='btn btn-lg' and text()='Drag and Drop']",
    dropdownComponent = "//a[@class='btn btn-lg' and text()='Dropdown']",
    enabledAndDisabledElementsComponent = "//a[@class='btn btn-lg' and text()='Enabled and disabled elements']",
    fileUploadComponent = "//a[@class='btn btn-lg' and text()='File Upload']",
    keyAndMousePressComponent = "//a[@class='btn btn-lg' and text()='Key and Mouse Press']",
    modalComponent = "//a[@class='btn btn-lg' and text()='Modal']",
    pageScrollComponent = "//a[@class='btn btn-lg' and text()='Page Scroll']",
    radioButtonComponent = "//a[@class='btn btn-lg' and text()='Radio Button']",
    switchWindowComponent = "//a[@class='btn btn-lg' and text()='Switch Window']",
    completeWebFormComponent = "//a[@class='btn btn-lg' and text()='Complete Web Form']",

    //Pages.FormPage
    titleComplete = "//h1[text()='Complete Web Form']",
    titleFirstName = "//label[@for='first-name']",
    fieldFirstName = "//input[@id='first-name']",
    titleLastName = "//label[@for='last-name']",
    fieldLastName = "//input[@id='last-name']",
    titleJobTitle = "//label[@for='job-title']",
    fieldJobTitle = "//input[@id='job-title']",
    titleHighestLevelOfEducation = "//label[text()='Highest level of education']",
    checkboxHighSchool = "//input[@id='radio-button-1']",
    checkboxCollege = "//input[@id='radio-button-2']",
    checkboxGradSchool = "//input[@id='radio-button-3']",
    titleSex = "//label[text()='Sex']",
    checkboxMale = "//input[@id='checkbox-1']",
    checkboxFemale = "//input[@id='checkbox-2']",
    checkboxPreferNotToSay = "//input[@id='checkbox-3']",
    titleYearsOfExperience = "//label[text()='Years of experience:']",
    selectorYearsOfExperience = "//select[@id='select-menu']",
    selectorSelectAnOption = "//option[@value='0']",
    selector01 = "//option[@value='1']",
    selector24 = "//option[@value='2']",
    selector59 = "//option[@value='3']",
    selector10 = "//option[@value='4']",
    titleDate = "//label[text()='Date']",
    buttonSubmit = "//a[text()='Submit']",
    //calendar
    //Pages.ThanksPage
    thanksTitle = "//h1[@align='center']",
    alertSuccess = "//div[@class='alert alert-success']",

 //welcomepageListOfElements

    //Pages.DropdownComponentsSteps
    dropdownMenu = "//div[@class='dropdown-menu show']/",
    listAutocomplete = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Autocomplete']",
    listButtons = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Buttons']",
    listCheckbox = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Checkbox']",
    listDatepicker = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Datepicker']",
    listDateAndDrop = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Drag and Drop']",
    listDropdown = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Dropdown']",
    listEnabledAndDisabledElements = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Enabled and disabled elements']",
    listFileUpload = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='File Upload']",
    listKeyAndMousePress = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Key and Mouse Press']",
    listModal = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Modal']",
    listPageScroll = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Page Scroll']",
    listRadioButton = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Radio Button']",
    listSwitchWindow = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Switch Window']",
    listCompleteWebForm = "//div[@class='dropdown-menu show']/a[@class='dropdown-item' and text()='Complete Web Form']",

    //Pages.ListOfAllComponents
    componentAutocomplete = "//li/a[@class='btn btn-lg' and text()='Autocomplete']",
    componentButtons = "//li/a[@class='btn btn-lg' and text()='Buttons']",
    componentCheckbox = "//li/a[@class='btn btn-lg' and text()='Checkbox']",
    componentDateAndDrop = "//li/a[@class='btn btn-lg' and text()='Drag and Drop']",
    componentDropdown = "//li/a[@class='btn btn-lg' and text()='Dropdown']",
    componentEnabledAndDisabledElements = "//li/a[@class='btn btn-lg' and text()='Enabled and disabled elements']",
    componentFileUpload = "//li/a[@class='btn btn-lg' and text()='File Upload']",
    componentKeyAndMousePress = "//li/a[@class='btn btn-lg' and text()='Key and Mouse Press']",
    componentModal = "//li/a[@class='btn btn-lg' and text()='Modal']",
    componentPageScroll = "//li/a[@class='btn btn-lg' and text()='Page Scroll']",
    componentRadioButton = "//li/a[@class='btn btn-lg' and text()='Radio Button']",
    componentSwitchWindow = "//li/a[@class='btn btn-lg' and text()='Switch Window']",
    componentCompleteWebForm = "//li/a[@class='btn btn-lg' and text()='Complete Web Form']",

    //Pages.AutocompletePage
    titleAutocomplete = "//div[@class='container']/h1[text()='Autocomplete']",
    titleAddress = "//div[@class='col-sm-8 col-sm-offset-2']//label[@for='autocomplete']",
    fieldAddress = "//input[@id='autocomplete']",
    titleStreetAddress = "//div[@class='col-sm-4 col-sm-offset-2']//label[text()='Street address']",
    fieldStreetAddress = "//input[@id='street_number']",
    titleStreetAddress2 = "//div[@class='col-sm-4']//label[text()='Street address 2']",
    fieldStreetAddress2 = "//input[@id='route']",
    titleCity = "//div[@class='col-sm-4 col-sm-offset-2']//label[text()='City']",
    fieldCity = "//input[@id='locality']",
    titleState = "//div[@class='col-sm-4']//label[text()='State']",
    fieldState = "//input[@id='administrative_area_level_1']",
    titleZipCode = "//div[@class='col-sm-4 col-sm-offset-2']//label[text()='Zip code']",
    fieldZipCode = "//input[@id='postal_code']",
    titleCountry = "//div[@class='col-sm-4']//label[text()='Country']",
    fieldCountry = "//input[@id='country']",

    //Pages.ButtonsPage
    buttonPrimary = "//button[@type='button' and @class='btn btn-lg btn-primary' and text()='Primary']",
    buttonSuccess = "//button[@type='button' and @class='btn btn-lg btn-success']",
    buttonInfo = "//button[@type='button' and @class='btn btn-lg btn-info']",
    buttonWarning = "//button[@type='button' and @class='btn btn-lg btn-warning']",
    buttonDanger = "//button[@type='button' and @class='btn btn-lg btn-danger']",
    buttonLink = "//button[@type='button' and @class='btn btn-lg btn-link']",
    buttonLeft = "//button[@type='button'and@class='btn btn-lg btn-primary'and text()='Left']",
    buttonMiddle = "//button[@type='button'and@class='btn btn-lg btn-primary'and text()='Middle']",
    buttonRight = "//button[@type='button'and@class='btn btn-lg btn-primary'and text()='Right']",
    button1 = "//button[@type='button'and@class='btn btn-lg btn-primary'and text()='1']",
    button2 = "//button[@type='button'and@class='btn btn-lg btn-primary'and text()='2']",
    buttonDropdown = "//button[@id='btnGroupDrop1']",
    buttonDropdownLink1 = "//a[@class='dropdown-item' and text()='Dropdown link 1']",
    buttonDropdownLink2 = "//a[@class='dropdown-item' and text()='Dropdown link 2']",

    //Pages.CheckboxPage
    titleCheckboxes = "//h1[text()='Checkboxes']",
    checkbox1 = "//input[@id='checkbox-1']",
    checkbox2 = "//input[@id='checkbox-2']",
    checkbox3 = "//input[@id='checkbox-3']",

    //Pages.DragAndDropPage
    titleDragAndDrop = "//h1[text()='Drag the image into the box']",
    image = "//div[@id='image']",
    box = "//div[@id='box']",

    //Pages.DropdownPage
    titleDropdown = "//h1[text()='Dropdown']",
    buttonDropdown1 = "//button[@id='dropdownMenuButton']",
    //dropdown menu уже используется

    //Pages.EnabledPage
    titleEnabled = "//h1[text()='Enabled and Disabled elements']",
    disabledInputField = "//input[@id='disabledInput']",
    enabledIputField = "//input[@id='input']",

    //Pages.FileUploadPage
    titleFileUpload = "//h1[text()='File upload']",
    buttonChoose = "//button[@type='button' and text()='Choose']",
    uploadFieldChooseAFile = "//input[@id='file-upload-field']",
    buttonReset = "//button[@type='button' and text()='Reset']",

    //Pages.KeyPressPage
    titleKeyboard = "//h1[text()='Keyboard and Mouse Input']",
    titleFullName = "//label[@for='name']",
    inputFieldFullName = "//input[@id='name']",
    buttonButton = "//button[@id='button']",

    //Pages.ModalPage
    titleModal = "//h1[text()='Modal']",
    buttonOpenModal = "//button[@id='modal-button']",
    modalHeader = "//div[@class='modal-header']",
    modalHeaderTitleModal = "//h5[@id='exampleModalLabel']",
    modalHeaderTitleSome = "//div[@class='modal-body']",
    modalHeaderButtonClose = "//button[@id='close-button']",
    modalHeaderButtonOk = "//button[@id='ok-button']",
    modalHeaderButtonX = "//button[@type='button' and @class='close']",

    //Pages.ScrollPage
    titleScroll = "//h1[text()='Large page content']",
    titleP1 = "//div[@class='col-sm-12']/p[1]",
    titleP2 = "//div[@class='col-sm-12']/p[2]",
    titleP3 = "//div[@class='col-sm-12']/p[3]",
    titleP4 = "//div[@class='col-sm-12']/p[4]",
    titleP5 = "//div[@class='col-sm-12']/p[5]",
    titleP6 = "//div[@class='col-sm-12']/p[6]",
    titleP7 = "//div[@class='col-sm-12']/p[7]",
    titleP8 = "//div[@class='col-sm-12']/p[8]",
    titleFullName1 = "//label[text()='Full Name']",
    inputFieldFullName1 = "//input[@id='name']",
    titleDate1 = "//label[text()='Date']",
    inputFieldDate = "//input[@id='date']",

    //Pages.RadioButtonPage
    titleRadioButton = "//h1[text()='Radio buttons']",
    inputRadioButton1 = "//input[@id='radio-button-1']",
    titleRadioButton1 = "//label[@class='form-check-label' and @for='radio-button-1']",
    inputRadioButton2 = "//input[@value='option2']",
    titleRadioButton2 = "//label[@class='form-check-label' and @for='radio-button-2']",
    inputRadioButton3 = "//input[@value='option3']",
    titleRadioButton3 = "//label[@class='form-check-label' and @for='radio-button-3']",

    //Pages.SwitchWindowPage
    titleSwitchWindowPage = "//h1[text()='Switch Window']",
    buttonOpenNewTab = "//button[@id='new-tab-button']",
    buttonOpenAlert = "//button[@id='alert-button']";

    //Pages.CompleteWebFormPage















}
