Feature: Datepicker page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Datepicker" page

#web layout

#functional
  Scenario: Pick the date from last month
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on and check "previous" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from next month
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on and check "next" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the current date
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from last year
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "previous" "year" is displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from next year
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "next" "year" is displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from last decade
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on the "year" element and check "current decade" "2020-2029" and "years": "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030" are displayed
    Then Click on and check "previous" "decade" is displayed
    Then Click on the "2010" element and check "year" "2010" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from next decade
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on the "year" element and check "current decade" "2020-2029" and "years": "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030" are displayed
    Then Click on and check "next" "decade" is displayed
    Then Click on the "2030" element and check "year" "2030" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from last century
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on the "year" element and check "current decade" "2020-2029" and "years": "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030" are displayed
    Then Click on the "decade" element and check "current century" "2000-2090" and "decades": "1990", "2000", "2010", "2020", "2030", "2040", "2050", "2060", "2070", "2080", "2090", "2100" are displayed
    Then Click on and check "previous" "century" is displayed
    Then Click on the "1900" element and check "decade" "1900-1909" and "years": "1899", "1900", "1901", "1902", "1903", "1904", "1905", "1906", "1907", "1908", "1909", "1910" are displayed
    Then Click on the "1900" element and check "year" "1900" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from next century
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on the "year" element and check "current decade" "2020-2029" and "years": "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030" are displayed
    Then Click on the "decade" element and check "current century" "2000-2090" and "years": "1990", "2000", "2010", "2020", "2030", "2040", "2050", "2060", "2070", "2080", "2090", "2100" are displayed
    Then Click on and check "next" "century" is displayed
    Then Click on the "2100" element and check "decade" "2100-2109" and "years": "2099", "2100", "2101", "2102", "2103", "2104", "2105", "2106", "2107", "2108", "2109", "2110" are displayed
    Then Click on the "2100" element and check "year" "2100" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from previous millennium
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on the "year" element and check "current decade" "2020-2029" and "years": "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030" are displayed
    Then Click on the "decade" element and check "current century" "2000-2090" and "decades": "1990", "2000", "2010", "2020", "2030", "2040", "2050", "2060", "2070", "2080", "2090", "2100" are displayed
    Then Click on the "century" element and check "current millennium" "2000-2900" and "centuries": "1900", "2000", "2100", "2200", "2300", "2400", "2500", "2600", "2700", "2800", "2900", "3000" are displayed
    Then Click on and check "previous" "millennium" is displayed
    Then Click on the "1000" element and check "century" "1000-1090" and "decades": "990", "1000", "1010", "1020", "1030", "1040", "1050", "1060", "1070", "1080", "1090", "1100" are displayed
    Then Click on the "1000" element and check "decade" "1000-1009" and "years": "999", "1000", "1001", "1002", "1003", "1004", "1005", "1006", "1007", "1008", "1009", "1010" are displayed
    Then Click on the "1000" element and check "year" "1000" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from next millennium
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on the "year" element and check "current decade" "2020-2029" and "years": "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030" are displayed
    Then Click on the "decade" element and check "current century" "2000-2090" and "decades": "1990", "2000", "2010", "2020", "2030", "2040", "2050", "2060", "2070", "2080", "2090", "2100" are displayed
    Then Click on the "century" element and check "current millennium" "2000-2900" and "centuries": "1900", "2000", "2100", "2200", "2300", "2400", "2500", "2600", "2700", "2800", "2900", "3000" are displayed
    Then Click on and check "next" "millennium" is displayed
    Then Click on the "3000" element and check "century" "3000-3090" and "decades": "2990", "3000", "3010", "3020", "3030", "3040", "3050", "3060", "3070", "3080", "3090", "3100" are displayed
    Then Click on the "3000" element and check "decade" "3000-3009" and "years": "2999", "3000", "3001", "3002", "3003", "3004", "3005", "3006", "3007", "3008", "3009", "3010" are displayed
    Then Click on the "3000" element and check "year" "3000" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick of current date after text entering in the input field
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Type "hello" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Pick of current date after numbers entering in the input field
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Type "11111" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Keep the entered date on the field after pressing Enter
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Type "01/01/2021" and press Enter
    Then Check "01/01/2021" "date" is displayed

  Scenario: Keep the entered date on the field after click
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Type "01/01/2021" and press Enter
    Then Click on title Datepicker and check calendar is closed
    Then Check "01/01/2021" "date" is displayed

  Scenario: Pick of current date after miscellaneous symbols entering in the input field
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Type "≈ç¬ø©" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Deleting numbers inputted after the date in the input field
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field
    Then Click on input field and check calendar is opened
    Then Type "22222" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Deleting text inputted after the date in the input field
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field
    Then Click on input field and check calendar is opened
    Then Type "hi" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Deleting miscellaneous symbols inputted after the date in the input field
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field
    Then Click on input field and check calendar is opened
    Then Type "џ®њƒ" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Saving calendar state after page field click
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on and check "previous" "month" is displayed
    Then Click on title Datepicker and check calendar is closed
    Then Click on input field and check calendar is opened
    Then Check "previous" "month" is displayed

  Scenario: "Refresh" - deleting the date from input field
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field
    Then Refresh the page and check: the datepicker page is opened and the input field is empty

  Scenario: "Refresh" - cancel calendar state (last month)
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on and check "previous" "month" is displayed
    Then Click on title Datepicker and check calendar is closed
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Check "current" "month" is displayed

  Scenario: "Refresh" - cancel calendar state (next month)
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on and check "next" "month" is displayed
    Then Click on title Datepicker and check calendar is closed
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Check "current" "month" is displayed

  Scenario: "Backward" - saving the date in the input field
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Check "current" "date" is displayed

  Scenario: "Backward" - cancel calendar state (last month)
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on and check "previous" "month" is displayed
    Then Click on title Datepicker and check calendar is closed
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on input field and check calendar is opened
    Then Check "current" "date" is displayed

  Scenario: "Backward" - cancel calendar state (next month)
    Then Refresh the page and check: the datepicker page is opened and the input field is empty
    Then Click on input field and check calendar is opened
    Then Click on and check "next" "month" is displayed
    Then Click on title Datepicker and check calendar is closed
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on input field and check calendar is opened
    Then Check "current" "date" is displayed

  Scenario: "Forward" - saving the date in the input field
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Go to "Datepicker" page
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field
    Then Click on "Forward" and check "form" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Check "current" "date" is displayed

  Scenario: "Forward" - cancel calendar state (last month)
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Go to "Datepicker" page
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on input field and check calendar is opened
    Then Click on and check "previous" "month" is displayed
    Then Click on title Datepicker and check calendar is closed
    Then Click on "Forward" and check "form" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on input field and check calendar is opened
    Then Check "current" "month" is displayed

  Scenario: "Forward" - cancel calendar state (next month)
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Go to "Datepicker" page
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on input field and check calendar is opened
    Then Click on and check "next" "month" is displayed
    Then Click on title Datepicker and check calendar is closed
    Then Click on "Forward" and check "form" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on input field and check calendar is opened
    Then Check "current" "month" is displayed

   #header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "datepicker" page has opened
    Then Click on "Forward" and check "form" page has opened