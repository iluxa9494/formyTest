Feature: File upload page

  Background:
    Then Open browser and go to Formy site
    Then Go to "File Upload" page

#web layout
  Scenario: Page title File upload - displays correctly
    Then Check "File upload" has page title "File upload"

  Scenario: Choose button - title is "Choose"
    Then Check "choose button" has "title" "Choose"

  Scenario: Reset button - title is "Reset"
    Then Check "reset button" has "title" "Reset"

  Scenario: File upload field - placeholder is "Choose a file..."
    Then Check "file upload field" has "placeholder" "Choose a file..."

#functional
  Scenario: Choose button - enabled, clickable, not selected
    Then Check "choose button" is enabled, not selected

  Scenario: Choose button - upload window opened
    Then Click on "choose button"

  Scenario: File upload field - enabled, clickable, not selected
    Then Check "file upload field" is enabled, not selected

  Scenario: File upload field - upload window opened
    Then Click on "file upload field"

  Scenario: File upload field - upload files of the most popular file formats
    Then Upload "JAVA.java" file
    Then Check "JAVA.java" file has displayed in file upload input
    Then Click on "reset button"
    Then Check file upload field has cleared

    Then Upload "JS.js" file
    Then Check "JS.js" file has displayed in file upload input
    Then Click on "reset button"
    Then Check file upload field has cleared

    Then Upload "JSON.json" file
    Then Check "JSON.json" file has displayed in file upload input
    Then Click on "reset button"
    Then Check file upload field has cleared

    Then Upload "MOV.mov" file
    Then Check "MOV.mov" file has displayed in file upload input
    Then Click on "reset button"
    Then Check file upload field has cleared

    Then Upload "MP3.mp3" file
    Then Check "MP3.mp3" file has displayed in file upload input
    Then Click on "reset button"
    Then Check file upload field has cleared

    Then Upload "PNG.png" file
    Then Check "PNG.png" file has displayed in file upload input
    Then Click on "reset button"
    Then Check file upload field has cleared

    Then Upload "TXT.txt" file
    Then Check "TXT.txt" file has displayed in file upload input
    Then Click on "reset button"
    Then Check file upload field has cleared

    Then Upload "XML.xml" file
    Then Check "XML.xml" file has displayed in file upload input
    Then Click on "reset button"
    Then Check file upload field has cleared

    Then Upload "ZIP.zip" file
    Then Check "ZIP.zip" file has displayed in file upload input
    Then Click on "reset button"
    Then Check file upload field has cleared

  Scenario: File upload field - error page after pressing Enter
    Then Upload "JAVA.java" file
    Then Press Enter and check "fileupload" page has opened and title "The page you were looking for doesn't exist." has displayed

  Scenario: Reset button - enabled, clickable, not selected
    Then Check "reset button" is enabled, not selected

  Scenario: Reset button - clear file upload field
    Then Click on "reset button"
    Then Check file upload field has cleared

  Scenario: Refresh the page - file upload field reset its state
    Then Upload "JAVA.java" file
    Then Check "JAVA.java" file has displayed in file upload input
    Then Click on "Refresh" and check "fileupload" page has opened
    Then Check file upload field has cleared

  Scenario: Backward to the page - file upload field saved its state
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Go to "File Upload" page
    Then Upload "JAVA.java" file
    Then Check "JAVA.java" file has displayed in file upload input
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Check "JAVA.java" file has displayed in file upload input

  Scenario: Forward to the page - file upload field saved its state
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Go to "File Upload" page
    Then Upload "JAVA.java" file
    Then Check "JAVA.java" file has displayed in file upload input
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "fileupload" page has opened
    Then Check "JAVA.java" file has displayed in file upload input

  #header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Check "File upload" has page title "File upload"
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "fileupload" page has opened
    Then Click on "Forward" and check "form" page has opened