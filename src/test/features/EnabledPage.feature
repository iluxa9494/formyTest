Feature: Enabled and disabled elements page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Enabled and disabled elements" page

#web layout
  Scenario: Page title Dropdown - displays correctly
    Then Check "Enabled and disabled elements" has page title "Enabled and Disabled elements"

#functional
#disabled field
  Scenario: Disabled input - not selected, not enabled
    Then Check disabled input field has not selected and not enabled

  Scenario: Disabled input placeholder - correct title
    Then Check placeholder of "disabled input field" has text "Disabled input here..."

  Scenario: Disabled input - try to enter value
    Then Enter "M1џ01/0100:00" in disabled input field and check data has not entered

#enabled field
  Scenario: Enabled input - not selected, enabled
    Then Check input field has not selected, enabled

  Scenario: Enabled input field - empty field when page just opened
    Then Check input field is empty

  Scenario: Enabled input placeholder - correct title
    Then Check placeholder of "enabled input field" has text "Input here..."

  Scenario: Enabled input field - opportunity to enter miscellaneous symbols/date/time/numbers/letters
    Then Enter "џ®њƒ" in enabled input field and check data has entered
    Then Enter "01/01/2021" in enabled input field and check data has entered
    Then Enter "00:00:00" in enabled input field and check data has entered
    Then Enter "11111" in enabled input field and check data has entered
    Then Enter "Menlo Park" in enabled input field and check data has entered

  Scenario: Enabled input field - entering max length of symbols for value
# 100 symbols max length
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in enabled input field and check data has entered
    Then Clear enabled input field via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in enabled input field and check data has entered

  Scenario: Enabled input field - opportunity to copy/paste/delete data
    Then Enter "Menlo Park" in enabled input field and check data has entered
    Then Copy data from enabled input field, clear via delete, paste data to the field and check the functions have worked

  Scenario: Refresh the page - disabled field save its state, enabled field - reset its state
    Then Check input field is empty
    Then Check disabled input field has not selected and not enabled
    Then Enter "Menlo Park" in enabled input field and check data has entered
    Then Click on "Refresh" and check "enabled" page has opened
    Then Check input field is empty
    Then Check disabled input field has not selected and not enabled

  Scenario: Backward - all fields saved the data
    Then Check input field is empty
    Then Check disabled input field has not selected and not enabled
    Then Enter "Menlo Park" in enabled input field and check data has entered
    Then Click on "Form" and check "form" page has opened
    Then Check "Complete Web Form" title is displayed
    Then Click on "Backward" and check "enabled" page has opened
    Then Check disabled input field has not selected and not enabled
    Then Check field input has "Menlo Park" value

  Scenario: Forward - all fields saved the data
    Then Check input field is empty
    Then Check disabled input field has not selected and not enabled
    Then Enter "Menlo Park" in enabled input field and check data has entered
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "enabled" page has opened
    Then Check disabled input field has not selected and not enabled
    Then Check field input has "Menlo Park" value

#  header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "enabled" page has opened
    Then Click on "Forward" and check "form" page has opened