Feature: Error page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Dropdown" page
    Then Click on dropdown button
    Then Check elements: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "File Download", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form" have displayed
    Then Click on "File Download" in dropdown list and check "filedownload" page has opened

#web layout
  Scenario: Titles has displayed
    Then Click on "Refresh" and check "filedownload" page has opened
    Then Check "first" title "The page you were looking for doesn't exist." has displayed
    Then Check "second" title "You may have mistyped the address or the page may have moved." has displayed
    Then Check "third" title "If you are the application owner check the logs for more information." has displayed

#functional
  Scenario: Forward - window with titles has displayed
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Forward" and check "filedownload" page has opened
    Then Click on "Refresh" and check "filedownload" page has opened
    Then Check "first" title "The page you were looking for doesn't exist." has displayed
    Then Check "second" title "You may have mistyped the address or the page may have moved." has displayed
    Then Check "third" title "If you are the application owner check the logs for more information." has displayed

  Scenario: Backward - page filedownload has not opened, window with titles has not displayed more
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "dropdown" page has opened
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "dropdown" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Refresh - window with titles has displayed
    Then Click on "Refresh" and check "filedownload" page has opened
    Then Check "first" title "The page you were looking for doesn't exist." has displayed
    Then Check "second" title "You may have mistyped the address or the page may have moved." has displayed
    Then Check "third" title "If you are the application owner check the logs for more information." has displayed