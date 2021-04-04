Feature: Dropdown page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Dropdown" page

#web layout
  Scenario: Page title Dropdown - displays correctly
    Then Check "Dropdown" has page title "Dropdown"
#functional
  Scenario: Dropdown button  - displays and clickable
    Then Check Dropdown button has title "Dropdown button"
    Then Check Dropdown button not selected, enabled

  Scenario: Dropdown elements - clickability, page refferal (backward), resetting dropdown state
    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Autocomplete" in dropdown list and check "autocomplete" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Buttons" in dropdown list and check "buttons" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Checkbox" in dropdown list and check "checkbox" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Datepicker" in dropdown list and check "datepicker" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Drag and Drop" in dropdown list and check "dragdrop" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Dropdown" in dropdown list and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Enabled and disabled elements" in dropdown list and check "enabled" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "File Upload" in dropdown list and check "fileupload" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "File Download" in dropdown list and check "filedownload" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Key and Mouse Press" in dropdown list and check "keypress" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Modal" in dropdown list and check "modal" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Page Scroll" in dropdown list and check "scroll" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Radio Button" in dropdown list and check "radiobutton" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Switch Window" in dropdown list and check "switch-window" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Complete Web Form" in dropdown list and check "form" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled

  Scenario: Forward to the page - page element has saved its state
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Go to "Dropdown" page
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled
    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "dropdown" page has opened
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed

  Scenario: Refresh the page - page element has saved its state
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled
    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Refresh" and check "dropdown" page has opened
    Then Check dropdown list has closed

  Scenario: Backward to the page - page element has saved its state
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Go to "Dropdown" page
    Then Check dropdown list has closed
    Then Check Dropdown button not selected, enabled
    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed

  #header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "form" page has opened