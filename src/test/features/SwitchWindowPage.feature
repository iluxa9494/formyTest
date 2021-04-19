Feature: Switch window page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Switch Window" page

#web layout
#  Scenario: Page title Switch Window - displays correctly
#    Then Check "Switch Window" has page title "Switch Window"
#
#  Scenario: Page title Modal - displays correctly
#    Then Check "Modal" has page title "Modal"
#
#  Scenario: Open new tab and Open alert button titles - displays correctly
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#
##functional
#  Scenario: Open new tab and Open alert buttons - enabled, unselected
#    Then Check "open new tab" has not selected and enabled
#    Then Check "open alert" has not selected and enabled
#
#  Scenario: Open new tab button - opened Welcome to Formy page in a new window tab
#    Then Click on "open new tab" button
#    Then Check in a new window tab "Welcome to Formy" page has opened
#    Then Back to the 1st window tab and check "switch-window" page has opened
#
#  Scenario: Open alert button - opened Welcome to Formy page in a new window tab
#    Then Click on "open alert" button
#    Then Check an alert has opened
#    Then Check an alert has a title "This is a test alert!"
#    Then Check an alert has "OK" button
#    Then Click on alert "OK" button
#    Then Check an alert window has absent
#
#  Scenario: Refresh the page - all page elements have saved its state
#    Then Click on "Refresh" and check "switch-window" page has opened
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#    Then Click on "open new tab" button
#    Then Back to the 1st window tab and check "switch-window" page has opened
#    Then Click on "Refresh" and check "switch-window" page has opened
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#    Then Click on "open alert" button
#    Then Check an alert has opened
#    Then Click on "Refresh" and check "switch-window" page has opened
#    Then Check an alert window has absent
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#
#  Scenario: Backward to the page - if clicked open new tab button - page element saved its state, if clicked open alert button - no
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#    Then Click on "open new tab" button
#    Then Back to the 1st window tab and check "switch-window" page has opened
#    Then Click on "Form" and check "form" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#    Then Click on "open alert" button
#    Then Check an alert has opened
#    Then Click on "Forward" and check "form" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Check an alert window has absent
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#
#  Scenario: Forward to the page - if clicked open new tab button - page element saved its state, if clicked open alert button - no
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#    Then Click on "open new tab" button
#    Then Back to the 1st window tab and check "switch-window" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "switch-window" page has opened
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#    Then Click on "open alert" button
#    Then Check an alert has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "switch-window" page has opened
#    Then Check an alert window has absent
#    Then Check "open new tab" button has an "Open new tab" title
#    Then Check "open alert" button has an "Open alert" title
#
  #header
#  Scenario: Header: Formy referral check
#    Then Click on "Formy" and check "Welcome to Formy" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "Welcome to Formy" page has opened
#
#  Scenario: Header: Form referral check
#    Then Click on "Form" and check "form" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "form" page has opened
#
#  Scenario: Header, Components: Autocomplete referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Autocomplete" and check "autocomplete" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "autocomplete" page has opened
#
#  Scenario: Header, Components: Buttons referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Buttons" and check "buttons" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "buttons" page has opened
#
#  Scenario: Header, Components: Checkbox referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Checkbox" and check "checkbox" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "checkbox" page has opened
#
#  Scenario: Header, Components: Autocomplete referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Datepicker" and check "datepicker" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "datepicker" page has opened
#
#  Scenario: Header, Components: Drag and Drop referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Drag and Drop" and check "dragdrop" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "dragdrop" page has opened
#
#  Scenario: Header, Components: Dropdown referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Dropdown" and check "dropdown" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "dropdown" page has opened
#
#  Scenario: Header, Components: Enabled and disabled elements referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "enabled" page has opened
#
#  Scenario: Header, Components: Enabled and disabled elements referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "File Upload" and check "fileupload" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "fileupload" page has opened
#
#  Scenario: Header, Components: Key and Mouse Press referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Key and Mouse Press" and check "keypress" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "keypress" page has opened
#
#  Scenario: Header, Components: Modal referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Modal" and check "modal" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "modal" page has opened
#
#  Scenario: Header, Components: Page Scroll referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Page Scroll" and check "scroll" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "scroll" page has opened
#
#  Scenario: Header, Components: Radio Button referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Radio Button" and check "radiobutton" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "radiobutton" page has opened
#
#  Scenario: Header, Components: Complete Web Form referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Complete Web Form" and check "form" page has opened
#    Then Click on "Backward" and check "switch-window" page has opened
#    Then Click on "Forward" and check "form" page has opened