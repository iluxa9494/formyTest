Feature: Key and mouse press page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Key and Mouse Press" page

#web layout
  Scenario: Page title Keyboard and Mouse Input - displays correctly
    Then Check "Key and Mouse Press" has page title "Keyboard and Mouse Input"

  Scenario: Element titles - display correctly
    Then Check "full name input" has a "Full name" "title"
    Then Check "button" has a "Button" "title"

  Scenario: Element placeholder - display correctly
    Then Check "full name input" has a "Enter full name" "placeholder"

#functional
  Scenario: Elements - enabled, unselected
    Then Check "full name input" has not selected and enabled
    Then Check "button" has not selected and enabled

  Scenario: Button - has not referred any page after click
    Then Enter "Alice" in full name input, check data has entered
    Then Click on button and check "keypress" has opened
    Then Check full name input has a "Alice" value

  Scenario: Full name field - successful data entry
    Then Check full name input has empty
    Then Enter "џ®њƒ" in full name input, check data has entered
    Then Enter "01/01/2021" in full name input, check data has entered
    Then Enter "00:00:00" in full name input, check data has entered
    Then Enter "11111" in full name input, check data has entered
    Then Enter "Alice" in full name input, check data has entered
    Then Enter "Smith" in full name input, check data has entered

  Scenario: Full name field - entering max length of symbols for value
# 100 symbols for full name field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in full name input, check data has entered
    Then Clear full name input via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in full name input, check data has entered

  Scenario: Full name field - opportunity to copy/paste/delete data
    Then Enter "Menlo Park" in full name input, check data has entered
    Then Copy data from full name input, clear via delete, paste data to the field and check all functions have worked

  Scenario: Full name field - opportunity to copy/paste/delete data
    Then Click on full name input field
    Then Enter "Jane" in full name input, check data has entered
    Then Clear full name input field
    Then Check full name input has empty

  Scenario: Full name field - opportunity to copy/paste/delete data
    Then Click on full name input field
    Then Enter "Jane" in full name input, check data has entered
    Then Press Enter
    Then Check full name input has empty

  Scenario: Refresh the page - the field has reset its state, the button has enabled
    Then Click on full name input field
    Then Enter "Jane" in full name input, check data has entered
    Then Check "button" has not selected and enabled
    Then Click on "Refresh" and check "keypress" page has opened
    Then Check full name input has empty
    Then Check "button" has not selected and enabled

  Scenario: Backward to the page - the field has saved its state, the button has enabled
    Then Click on full name input field
    Then Enter "Jane" in full name input, check data has entered
    Then Check "button" has not selected and enabled
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Check full name input has a "Jane" value
    Then Check "button" has not selected and enabled

  Scenario: Forward to the page - the field has saved its state, the button has enabled
    Then Click on full name input field
    Then Enter "Jane" in full name input, check data has entered
    Then Check "button" has not selected and enabled
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "keypress" page has opened
    Then Check full name input has a "Jane" value
    Then Check "button" has not selected and enabled

#header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "keypress" page has opened
    Then Click on "Forward" and check "form" page has opened