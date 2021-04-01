Feature: Autocomplete page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Autocomplete" page

#web layout

#functional
  Scenario: Dropdown - Address field has dropdown only
    Then Check all fields is empty
    Then Enter "Menlo Park" in "Address" field and check data has entered
    Then Check dropdown of "Address" field "has" displayed

    Then Enter "1 Hacker Way" in "Street address" field and check data has entered
    Then Check dropdown of "Street address" field "has not" displayed

    Then Enter "149 Commonwealth Dr" in "Street address 2" field and check data has entered
    Then Check dropdown of "Street address 2" field "has not" displayed

    Then Enter "Menlo Park" in "City" field and check data has entered
    Then Check dropdown of "City" field "has not" displayed

    Then Enter "CA" in "State" field and check data has entered
    Then Check dropdown of "State" field "has not" displayed

    Then Enter "94025" in "Zip code" field and check data has entered
    Then Check dropdown of "Zip code" field "has not" displayed

    Then Enter "USA" in "Country" field and check data has entered
    Then Check dropdown of "Country" field "has not" displayed

  Scenario: Search - comparing typed symbols in the field with results in the dropdown
    Then Check all fields is empty
    Then Enter "Menl" in "Address" field and check data has entered
    Then Check all 5 elements of dropdown list contains "Menl" in its titles

  Scenario: Autocomplete fields
    Then Check all fields is empty
    Then Enter "Menlo Park" in "Address" field and check data has entered
    Then Choose "Menlo Park Калифорния, США - 1st element" in dropdown and check fields: City has got data "Менло-Парк", state - "CA", country - "Соединенные Штаты Америки" and other fields are empty

  Scenario: Refresh the page - all fields are empty
    Then Check all fields is empty
    Then Enter "Menlo Park" in "Address" field and check data has entered
    Then Choose "Menlo Park Калифорния, США - 1st element" in dropdown and check fields: City has got data "Менло-Парк", state - "CA", country - "Соединенные Штаты Америки" and other fields are empty
    Then Enter "1 Hacker Way" in "Street address" field and check data has entered
    Then Enter "149 Commonwealth Dr" in "Street address 2" field and check data has entered
    Then Enter "94025" in "Zip code" field and check data has entered
    Then Refresh page and check all fields are empty

  Scenario: Backward - all fields saved the data
    Then Check all fields is empty
    Then Enter "Menlo Park" in "Address" field and check data has entered
    Then Choose "Menlo Park Калифорния, США - 1st element" in dropdown and check fields: City has got data "Менло-Парк", state - "CA", country - "Соединенные Штаты Америки" and other fields are empty
    Then Enter "1 Hacker Way" in "Street address" field and check data has entered
    Then Enter "149 Commonwealth Dr" in "Street address 2" field and check data has entered
    Then Enter "94025" in "Zip code" field and check data has entered
    Then Click on "Form" and check "form" page has opened
    Then Check "Complete Web Form" title is displayed
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Check all fields saved its data: Address - "Menlo Park, Калифорния, США", Street address - "1 Hacker Way", Street address 2 - "149 Commonwealth Dr", City - "Менло-Парк", State - "CA", Zip code - "94025", Country - "Соединенные Штаты Америки"

  Scenario: Forward - all fields saved the data
    Then Enter "Menlo Park" in "Address" field and check data has entered
    Then Choose "Menlo Park Калифорния, США - 1st element" in dropdown and check fields: City has got data "Менло-Парк", state - "CA", country - "Соединенные Штаты Америки" and other fields are empty
    Then Enter "1 Hacker Way" in "Street address" field and check data has entered
    Then Enter "149 Commonwealth Dr" in "Street address 2" field and check data has entered
    Then Enter "94025" in "Zip code" field and check data has entered
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened
    Then Check all fields saved its data: Address - "Menlo Park, Калифорния, США", Street address - "1 Hacker Way", Street address 2 - "149 Commonwealth Dr", City - "Менло-Парк", State - "CA", Zip code - "94025", Country - "Соединенные Штаты Америки"

  Scenario: Titles and Placeholders - display correctly
    Then Check "Address" "title" is "Address"
    Then Check "Address" "placeholder" is "Enter address"

    Then Check "Street address" "title" is "Street address"
    Then Check "Street address" "placeholder" is "Street address"

    Then Check "Street address 2" "title" is "Street address 2"
    Then Check "Street address 2" "placeholder" is "Street address 2"

    Then Check "City" "title" is "City"
    Then Check "City" "placeholder" is "City"

    Then Check "State" "title" is "State"
    Then Check "State" "placeholder" is "State"

    Then Check "Zip code" "title" is "Zip code"
    Then Check "Zip code" "placeholder" is "Zip code"

    Then Check "Country" "title" is "Country"
    Then Check "Country" "placeholder" is "Country"

  Scenario: Input fields - opportunity to copy/paste/delete data
    Then Enter "Menlo Park" in "Address" field and check data has entered
    Then Copy data from "Address" field, clear via delete, paste data to the field and check the functions have worked

    Then Enter "1 Hacker Way" in "Street address" field and check data has entered
    Then Copy data from "Street address" field, clear via delete, paste data to the field and check the functions have worked

    Then Enter "149 Commonwealth Dr" in "Street address 2" field and check data has entered
    Then Copy data from "Street address 2" field, clear via delete, paste data to the field and check the functions have worked

    Then Enter "Menlo Park" in "City" field and check data has entered
    Then Copy data from "City" field, clear via delete, paste data to the field and check the functions have worked

    Then Enter "CA" in "State" field and check data has entered
    Then Copy data from "State" field, clear via delete, paste data to the field and check the functions have worked

    Then Enter "94025" in "Zip code" field and check data has entered
    Then Copy data from "Zip code" field, clear via delete, paste data to the field and check the functions have worked

    Then Enter "USA" in "Country" field and check data has entered
    Then Copy data from "Country" field, clear via delete, paste data to the field and check the functions have worked

  Scenario: Input fields - opportunity to enter miscellaneous symbols/date/time/numbers/letters
    Then Enter "џ®њƒ" in "Address" field and check data has entered
    Then Enter "01/01/2021" in "Address" field and check data has entered
    Then Enter "00:00:00" in "Address" field and check data has entered
    Then Enter "11111" in "Address" field and check data has entered
    Then Enter "Menlo Park" in "Address" field and check data has entered

    Then Enter "џ®њƒ" in "Street address" field and check data has entered
    Then Enter "01/01/2021" in "Street address" field and check data has entered
    Then Enter "00:00:00" in "Street address" field and check data has entered
    Then Enter "11111" in "Street address" field and check data has entered
    Then Enter "Menlo Park" in "Street address" field and check data has entered

    Then Enter "џ®њƒ" in "Street address 2" field and check data has entered
    Then Enter "01/01/2021" in "Street address 2" field and check data has entered
    Then Enter "00:00:00" in "Street address 2" field and check data has entered
    Then Enter "11111" in "Street address 2" field and check data has entered
    Then Enter "Menlo Park" in "Street address 2" field and check data has entered

    Then Enter "џ®њƒ" in "City" field and check data has entered
    Then Enter "01/01/2021" in "City" field and check data has entered
    Then Enter "00:00:00" in "City" field and check data has entered
    Then Enter "11111" in "City" field and check data has entered
    Then Enter "Menlo Park" in "City" field and check data has entered

    Then Enter "џ®њƒ" in "State" field and check data has entered
    Then Enter "01/01/2021" in "State" field and check data has entered
    Then Enter "00:00:00" in "State" field and check data has entered
    Then Enter "11111" in "State" field and check data has entered
    Then Enter "Menlo Park" in "State" field and check data has entered

    Then Enter "џ®њƒ" in "Zip code" field and check data has entered
    Then Enter "01/01/2021" in "Zip code" field and check data has entered
    Then Enter "00:00:00" in "Zip code" field and check data has entered
    Then Enter "11111" in "Zip code" field and check data has entered
    Then Enter "Menlo Park" in "Zip code" field and check data has entered

    Then Enter "џ®њƒ" in "Country" field and check data has entered
    Then Enter "01/01/2021" in "Country" field and check data has entered
    Then Enter "00:00:00" in "Country" field and check data has entered
    Then Enter "11111" in "Country" field and check data has entered
    Then Enter "Menlo Park" in "Country" field and check data has entered

  Scenario: Input fields - entering max length of symbols for value
# 100 symbols for Address field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in "Address" field and check data has entered
    Then Clear "Address" field via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in "Address" field and check data has entered
# 100 symbols for Street address field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in "Street address" field and check data has entered
    Then Clear "Street address" field via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in "Street address" field and check data has entered
# 100 symbols for Street address 2 field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in "Street address 2" field and check data has entered
    Then Clear "Street address 2" field via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in "Street address 2" field and check data has entered
# 100 symbols for City field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in "City" field and check data has entered
    Then Clear "City" field via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in "City" field and check data has entered
# 100 symbols for State field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in "State" field and check data has entered
    Then Clear "State" field via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in "State" field and check data has entered
# 20 symbols for Zip code field
    Then Enter "12345678912345678912" in "Zip code" field and check data has entered
    Then Clear "Zip code" field via delete
    Then Enter "1 2 3 4 5 6 7 8 9 10" in "Zip code" field and check data has entered
# 100 symbols for Country field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in "Country" field and check data has entered
    Then Clear "Country" field via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in "Country" field and check data has entered

#  header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "autocomplete" page has opened
    Then Click on "Forward" and check "form" page has opened