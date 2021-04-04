Feature: Drag and drop page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Drag and Drop" page

#web layout
  Scenario: Title Drag and Drop - displays correctly
    Then Check "Drag and Drop" has page title "Drag the image into the box"

  Scenario: Box title  - display
    Then Check title "Drop here" has displayed

  Scenario: Selenium logo - display
    Then Check logo Selenium has displayed

#functional
  Scenario: Drop logo - success dropping and box title changed
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo to the box
    Then Check title "Dropped!" has displayed
    Then Check Selenium logo has absent on initial position
    Then Check Selenium logo has been in the box

  Scenario: Back logo - box saved its state
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo to the box
    Then Check title "Dropped!" has displayed
    Then Check Selenium logo has absent on initial position
    Then Check Selenium logo has been in the box
    Then Drop Selenium logo tо the initial position
    Then Check title "Dropped!" has displayed

  Scenario: Box - save its state if logo has not crossed the border
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo "below" without touching box boundary
    Then Check title "Drop here" has displayed
    Then Drop Selenium logo "to the right" without touching box boundary
    Then Check title "Drop here" has displayed
    Then Drop Selenium logo "above" without touching box boundary
    Then Check title "Drop here" has displayed

  Scenario: Box - saved its state if logo has crossed the border less 50% of the side lengths of the logo
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo on the box border "less 50% of the right" side lengths of the logo
    Then Check title "Drop here" has displayed
    Then Drop Selenium logo on the box border "less 50% of the upper" side lengths of the logo
    Then Check title "Drop here" has displayed
    Then Drop Selenium logo on the box border "less 50% of the left" side lengths of the logo
    Then Check title "Drop here" has displayed
    Then Drop Selenium logo on the box border "less 50% of the down" side lengths of the logo
    Then Check title "Drop here" has displayed

  Scenario: Box - changed its state if logo has crossed the border more 50% of the side lengths of the logo
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo on the box border "more 50% of the right" side lengths of the logo
    Then Check title "Dropped!" has displayed
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo on the box border "more 50% of the upper" side lengths of the logo
    Then Check title "Dropped!" has displayed
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo on the box border "more 50% of the left" side lengths of the logo
    Then Check title "Dropped!" has displayed
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo on the box border "more 50% of the down" side lengths of the logo
    Then Check title "Dropped!" has displayed

  Scenario: Refresh the page - all elements reset its settings
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo to the box
    Then Check Selenium logo has absent on initial position
    Then Check Selenium logo has been in the box
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Check logo Selenium has displayed on initial position
    Then Check title "Drop here" has displayed

  Scenario: Backward to the page - all elements saved its settings
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo to the box
    Then Check title "Dropped!" has displayed
    Then Check Selenium logo has absent on initial position
    Then Check Selenium logo has been in the box
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Check title "Dropped!" has displayed
    Then Check Selenium logo has absent on initial position
    Then Check Selenium logo has been in the box

  Scenario: Forward to the page - all elements saved its settings
    Then Click on "Refresh" and check "dragdrop" page has opened
    Then Drop Selenium logo to the box
    Then Check title "Dropped!" has displayed
    Then Check Selenium logo has absent on initial position
    Then Check Selenium logo has been in the box
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened
    Then Check title "Dropped!" has displayed
    Then Check Selenium logo has absent on initial position
    Then Check Selenium logo has been in the box

  #header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "dragdrop" page has opened
    Then Click on "Forward" and check "form" page has opened