Feature: Welcome to Formy page

  Background:
    Then Open browser and go to Formy site
    # проверить скролл

#web layout
#  Scenario: Page title Form - displays correctly
#    Then Check "Welcome Page" has page title "Welcome to Formy"
#
#  Scenario: Titles - displays correctly
#    Then Check "first" title has a "This is a simple site that has form components that can be used for testing purposes." text
#    Then Check "second" title has a "Here are the list of all the components" text
#
#  Scenario: All components list - displays correctly
#    Then Check list of the all components has displayed and contained: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#
#  Scenario: All components list - all elements have markers
#    Then Check "Autocomplete" has a circles marker in the list
#    Then Check "Buttons" has a circles marker in the list
#    Then Check "Checkbox" has a circles marker in the list
#    Then Check "Datepicker" has a circles marker in the list
#    Then Check "Drag and Drop" has a circles marker in the list
#    Then Check "Dropdown" has a circles marker in the list
#    Then Check "Enabled and disabled elements" has a circles marker in the list
#    Then Check "File Upload" has a circles marker in the list
#    Then Check "Key and Mouse Press" has a circles marker in the list
#    Then Check "Modal" has a circles marker in the list
#    Then Check "Page Scroll" has a circles marker in the list
#    Then Check "Radio Button" has a circles marker in the list
#    Then Check "Switch Window" has a circles marker in the list
#    Then Check "Complete Web Form" has a circles marker in the list
#
##functional
#  Scenario: All components list - go to its page
#    Then Go to "Autocomplete" page
#    Then Go to "Buttons" page
#    Then Go to "Checkbox" page
#    Then Go to "Datepicker" page
#    Then Go to "Drag and Drop" page
#    Then Go to "Dropdown" page
#    Then Go to "Enabled and disabled elements" page
#    Then Go to "File Upload" page
#    Then Go to "Key and Mouse Press" page
#    Then Go to "Modal" page
#    Then Go to "Radio Button" page
#    Then Go to "Page Scroll" page
#    Then Go to "Switch Window" page
#    Then Go to "Complete Web Form" page
#
#  Scenario: All components list - unselected, enabled
#    Then Check "Autocomplete" page has been unselected, enabled
#    Then Check "Buttons" page has been unselected, enabled
#    Then Check "Checkbox" page has been unselected, enabled
#    Then Check "Datepicker" page has been unselected, enabled
#    Then Check "Drag and Drop" page has been unselected, enabled
#    Then Check "Dropdown" page has been unselected, enabled
#    Then Check "Enabled and disabled elements" page has been unselected, enabled
#    Then Check "File Upload" page has been unselected, enabled
#    Then Check "Key and Mouse Press" page has been unselected, enabled
#    Then Check "Modal" page has been unselected, enabled
#    Then Check "Radio Button" page has been unselected, enabled
#    Then Check "Page Scroll" page has been unselected, enabled
#    Then Check "Switch Window" page has been unselected, enabled
#    Then Check "Complete Web Form" page has been unselected, enabled
#
#  Scenario: Backward to the page - all page elements have saved its state
#    Then Check "first" title has a "This is a simple site that has form components that can be used for testing purposes." text
#    Then Check "second" title has a "Here are the list of all the components" text
#    Then Check list of the all components has displayed and contained: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Go to "Autocomplete" page
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Check "first" title has a "This is a simple site that has form components that can be used for testing purposes." text
#    Then Check "second" title has a "Here are the list of all the components" text
#    Then Check list of the all components has displayed and contained: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#
#  Scenario: Forward to the page - all page elements have saved its state
#    Then Go to "Autocomplete" page
#    Then Click on "Form" and check "Welcome to Formy" page has opened
#    Then Check "first" title has a "This is a simple site that has form components that can be used for testing purposes." text
#    Then Check "second" title has a "Here are the list of all the components" text
#    Then Check list of the all components has displayed and contained: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Backward" and check "autocomplete" page has opened
#    Then Click on "Forward" and check "Welcome to Formy" page has opened
#    Then Check "first" title has a "This is a simple site that has form components that can be used for testing purposes." text
#    Then Check "second" title has a "Here are the list of all the components" text
#    Then Check list of the all components has displayed and contained: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#
#  Scenario: Refresh the page - all page elements have saved its state
#    Then Check "first" title has a "This is a simple site that has form components that can be used for testing purposes." text
#    Then Check "second" title has a "Here are the list of all the components" text
#    Then Check list of the all components has displayed and contained: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Refresh" and check "Welcome to Formy" page has opened
#    Then Check "first" title has a "This is a simple site that has form components that can be used for testing purposes." text
#    Then Check "second" title has a "Here are the list of all the components" text
#    Then Check list of the all components has displayed and contained: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#
#   #header
#  Scenario: Header: Form referral check
#    Then Click on "Form" and check "form" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "form" page has opened
#
#  Scenario: Header, Components: Autocomplete referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Autocomplete" and check "autocomplete" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "autocomplete" page has opened
#
#  Scenario: Header, Components: Buttons referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Buttons" and check "buttons" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "buttons" page has opened
#
#  Scenario: Header, Components: Checkbox referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Checkbox" and check "checkbox" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "checkbox" page has opened
#
#  Scenario: Header, Components: Autocomplete referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Datepicker" and check "datepicker" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "datepicker" page has opened
#
#  Scenario: Header, Components: Drag and Drop referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Drag and Drop" and check "dragdrop" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "dragdrop" page has opened
#
#  Scenario: Header, Components: Dropdown referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Dropdown" and check "dropdown" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "dropdown" page has opened
#
#  Scenario: Header, Components: Enabled and disabled elements referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "enabled" page has opened
#
#  Scenario: Header, Components: Enabled and disabled elements referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "File Upload" and check "fileupload" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "fileupload" page has opened
#
#  Scenario: Header, Components: Key and Mouse Press referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Key and Mouse Press" and check "keypress" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "keypress" page has opened
#
#  Scenario: Header, Components: Modal referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Modal" and check "modal" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "modal" page has opened
#
#  Scenario: Header, Components: Page Scroll referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Page Scroll" and check "scroll" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "scroll" page has opened
#
#  Scenario: Header, Components: Radio Button referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Radio Button" and check "radiobutton" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "radiobutton" page has opened
#
#  Scenario: Header, Components: Switch Window referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Switch Window" and check "switch-window" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "switch-window" page has opened
#
#  Scenario: Header, Components: Complete Web Form referral check
#    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
#    Then Click on "Complete Web Form" and check "form" page has opened
#    Then Click on "Backward" and check "Welcome to Formy" page has opened
#    Then Click on "Forward" and check "form" page has opened