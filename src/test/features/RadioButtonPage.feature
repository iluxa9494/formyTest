Feature: Radio button page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Radio Button" page

#web layout
  Scenario: Page title Radio buttons - displays correctly
    Then Check "Radio Button" has page title "Radio buttons"

  Scenario: Radio button titles - displays correctly
    Then Check radio button "Radio button 1" has a "Radio button 1" title
    Then Check radio button "Radio button 2" has a "Radio button 2" title
    Then Check radio button "Radio button 3" has a "Radio button 3" title

#functional
  Scenario: Radio buttons - successful select
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"
    Then Click on the "Radio button 2 radio button" element
    Then Check "Radio button 2" radio button has "selected"
    Then Click on the "Radio button 3 radio button" element
    Then Check "Radio button 3" radio button has "selected"
    Then Click on the "Radio button 1 radio button" element
    Then Check "Radio button 1" radio button has "selected"

  Scenario: Radio buttons - 1st button selected via title click, 2d and 3d via radio button click only
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"
    Then Click on the "Radio button 2 title" element
    Then Check "Radio button 2" radio button has "unselected"
    Then Click on the "Radio button 3 title" element
    Then Check "Radio button 3" radio button has "unselected"
    Then Click on the "Radio button 1 title" element
    Then Check "Radio button 1" radio button has "selected"

  Scenario: Radio buttons - escape has not change radio button state
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"
    Then Click on the "Radio button 2 radio button" element
    Then Press Escape
    Then Check "Radio button 1" radio button has "unselected"
    Then Check "Radio button 2" radio button has "selected"
    Then Check "Radio button 3" radio button has "unselected"
    Then Click on the "Radio button 3 radio button" element
    Then Press Escape
    Then Check "Radio button 1" radio button has "unselected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "selected"
    Then Click on the "Radio button 1 radio button" element
    Then Press Escape
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"

  Scenario: Radio buttons - enter has not change radio button state
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"
    Then Click on the "Radio button 2 radio button" element
    Then Press enter
    Then Check "Radio button 1" radio button has "unselected"
    Then Check "Radio button 2" radio button has "selected"
    Then Check "Radio button 3" radio button has "unselected"
    Then Click on the "Radio button 3 radio button" element
    Then Press enter
    Then Check "Radio button 1" radio button has "unselected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "selected"
    Then Click on the "Radio button 3 radio button" element
    Then Press enter
    Then Check "Radio button 1" radio button has "unselected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "selected"

  Scenario: Refresh the page - all radio buttons has reset its state
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"

    Then Click on the "Radio button 2 radio button" element
    Then Check "Radio button 2" radio button has "selected"
    Then Click on "Refresh" and check "radiobutton" page has opened
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"

    Then Click on the "Radio button 3 radio button" element
    Then Check "Radio button 3" radio button has "selected"
    Then Click on "Refresh" and check "radiobutton" page has opened
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"

    Then Click on the "Radio button 3 radio button" element
    Then Click on the "Radio button 1 radio button" element
    Then Check "Radio button 1" radio button has "selected"
    Then Click on "Refresh" and check "radiobutton" page has opened
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"

  Scenario: Backward to the page - all radio buttons has saved its state
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"

    Then Click on the "Radio button 2 radio button" element
    Then Check "Radio button 2" radio button has "selected"
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Check "Radio button 1" radio button has "unselected"
    Then Check "Radio button 2" radio button has "selected"
    Then Check "Radio button 3" radio button has "unselected"

    Then Click on the "Radio button 3 radio button" element
    Then Check "Radio button 3" radio button has "selected"
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Check "Radio button 1" radio button has "unselected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "selected"

    Then Click on the "Radio button 3 radio button" element
    Then Click on the "Radio button 1 radio button" element
    Then Check "Radio button 1" radio button has "selected"
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"

  Scenario: Forward to the page - all radio buttons has saved its state
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"

    Then Click on the "Radio button 2 radio button" element
    Then Check "Radio button 2" radio button has "selected"
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened
    Then Check "Radio button 1" radio button has "unselected"
    Then Check "Radio button 2" radio button has "selected"
    Then Check "Radio button 3" radio button has "unselected"

    Then Click on the "Radio button 3 radio button" element
    Then Check "Radio button 3" radio button has "selected"
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened
    Then Check "Radio button 1" radio button has "unselected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "selected"

    Then Click on the "Radio button 3 radio button" element
    Then Click on the "Radio button 1 radio button" element
    Then Check "Radio button 1" radio button has "selected"
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened
    Then Check "Radio button 1" radio button has "selected"
    Then Check "Radio button 2" radio button has "unselected"
    Then Check "Radio button 3" radio button has "unselected"

# header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "radiobutton" page has opened
    Then Click on "Forward" and check "form" page has opened