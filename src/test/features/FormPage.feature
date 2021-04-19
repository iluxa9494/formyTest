Feature: Form page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Complete Web Form" page

#web layout
  Scenario: Page title Form - displays correctly
    Then Check "Form" has page title "Complete Web Form"

  Scenario: Element titles - display correctly
    Then Check element "first name input" has a "First name" title
    Then Check element "last name input" has a "Last name" title
    Then Check element "job title input" has a "Job title" title
    Then Check element "education radio buttons" has a "Highest level of education" title
    Then Check element "sex checkboxes" has a "Sex" title
    Then Check element "experience selector" has a "Years of experience:" title
    Then Check element "input date" has a "Date" title
    Then Check element "submit button" has a "Submit" title

  Scenario: Field input and date input placeholders, title of selector, checkboxes, radio buttons, button - display correctly
    Then Check element "first name input" has a "Enter first name" placeholder
    Then Check element "last name input" has a "Enter last name" placeholder
    Then Check element "job title input" has a "Enter your job title" placeholder
    Then Check element experience selector has a "Select an option" field text
    Then Click on the "experience selector"
    Then Check element experience selector has a Select an option, 0-1, 2-4, 5-9, 10+ titles
    Then Check element "input date" has a "mm/dd/yyyy" placeholder

#functional
  Scenario: First name field - successful data entry
    Then Check "first name input" has empty
    Then Enter "џ®њƒ" in "first name input" and check data has entered
    Then Enter "01/01/2021" in "first name input" and check data has entered
    Then Enter "00:00:00" in "first name input" and check data has entered
    Then Enter "11111" in "first name input" and check data has entered
    Then Enter "Alice" in "first name input" and check data has entered
    Then Enter "Smith" in "first name input" and check data has entered

  Scenario: First name filed - entering max length of symbols for value
#100 symbols for first name field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in "first name input" and check data has entered
    Then Clear "first name input" via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in "first name input" and check data has entered

  Scenario: First name filed - opportunity to copy/paste/delete data
    Then Enter "Menlo Park" in "first name input" and check data has entered
    Then Copy data from "first name input", clear via delete, paste data to the field and check the functions have worked

  Scenario: Last name field - successful data entry
    Then Check "last name input" has empty
    Then Enter "џ®њƒ" in "last name input" and check data has entered
    Then Enter "01/01/2021" in "last name input" and check data has entered
    Then Enter "00:00:00" in "last name input" and check data has entered
    Then Enter "11111" in "last name input" and check data has entered
    Then Enter "Alice" in "last name input" and check data has entered
    Then Enter "Smith" in "last name input" and check data has entered

  Scenario: Last name field - entering max length of symbols for value
#100 symbols for first name field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in "last name input" and check data has entered
    Then Clear "last name input" via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in "last name input" and check data has entered

  Scenario: Last name field - opportunity to copy/paste/delete data
    Then Enter "Menlo Park" in "last name input" and check data has entered
    Then Copy data from "last name input", clear via delete, paste data to the field and check the functions have worked

  Scenario: Job title field - successful data entry
    Then Check "job title input" has empty
    Then Enter "џ®њƒ" in "job title input" and check data has entered
    Then Enter "01/01/2021" in "job title input" and check data has entered
    Then Enter "00:00:00" in "job title input" and check data has entered
    Then Enter "11111" in "job title input" and check data has entered
    Then Enter "Alice Smith" in "job title input" and check data has entered
    Then Enter "QA Engineer" in "job title input" and check data has entered

  Scenario: Job title field - entering max length of symbols for value
#100 symbols for first name field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in "job title input" and check data has entered
    Then Clear "job title input" via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in "job title input" and check data has entered

  Scenario: Job title field - opportunity to copy/paste/delete data
    Then Enter "Menlo Park" in "job title input" and check data has entered
    Then Copy data from "job title input", clear via delete, paste data to the field and check the functions have worked

  Scenario: Education radio buttons - successful select
    Then Check "High School radio button" has been "unselected"
    Then Check "College radio button" has been "unselected"
    Then Check "Grad School radio button" has been "unselected"
    Then Click on the "High School radio button"
    Then Click on the "College radio button"
    Then Click on the "Grad School radio button"
    Then Check "High School radio button" has been "selected"
    Then Check "College radio button" has been "selected"
    Then Check "Grad School radio button" has been "selected"

  Scenario: Sex checkboxes - successful select
    Then Check "Male checkbox" has been "unselected"
    Then Check "Female checkbox" has been "unselected"
    Then Check "Prefer not to say checkbox" has been "unselected"
    Then Click on the "Male checkbox"
    Then Click on the "Female checkbox"
    Then Click on the "Prefer not to say checkbox"
    Then Check "Male checkbox" has been "selected"
    Then Check "Female checkbox" has been "selected"
    Then Check "Prefer not to say checkbox" has been "selected"

  Scenario: Experience selector - successful select
    Then Check element experience selector has a "Select an option" field text
    Then Click on the "experience selector"
    Then Check element experience selector has a Select an option, 0-1, 2-4, 5-9, 10+ titles
    Then Check "Select an option" has been "selected"
    Then Click on the "0-1"
    Then Check element experience selector has a "0-1" field text

    Then Click on the "experience selector"
    Then Check element experience selector has a Select an option, 0-1, 2-4, 5-9, 10+ titles
    Then Check "0-1" has been "selected"
    Then Click on the "Select an option"
    Then Check element experience selector has a "Select an option" field text

    Then Click on the "experience selector"
    Then Check element experience selector has a Select an option, 0-1, 2-4, 5-9, 10+ titles
    Then Check "Select an option" has been "selected"
    Then Click on the "2-4"
    Then Check element experience selector has a "2-4" field text

    Then Click on the "experience selector"
    Then Check element experience selector has a Select an option, 0-1, 2-4, 5-9, 10+ titles
    Then Check "2-4" has been "selected"
    Then Click on the "5-9"
    Then Check element experience selector has a "5-9" field text

    Then Click on the "experience selector"
    Then Check element experience selector has a Select an option, 0-1, 2-4, 5-9, 10+ titles
    Then Check "5-9" has been "selected"
    Then Click on the "10+"
    Then Check element experience selector has a "10+" field text
    Then Click on the "experience selector"
    Then Check "10+" has been "selected"

  Scenario: Pick the date from last month
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Click on and check "previous" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from next month
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Click on and check "next" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the current date
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from last year
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "previous" "year" is displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from next year
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "next" "year" is displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from last decade
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on the "year" element and check "current decade" "2020-2029" and "years": "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030" are displayed
    Then Click on and check "previous" "decade" is displayed
    Then Click on the "2010" element and check "year" "2010" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from next decade
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Click on the "month" element and check "current year" "2021" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on the "year" element and check "current decade" "2020-2029" and "years": "2019", "2020", "2021", "2022", "2023", "2024", "2025", "2026", "2027", "2028", "2029", "2030" are displayed
    Then Click on and check "next" "decade" is displayed
    Then Click on the "2030" element and check "year" "2030" and "months": "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" are displayed
    Then Click on and check "Jan" "month" is displayed
    Then Pick "1th day" and check the calendar is closed and the picked date is displayed in the input field

  Scenario: Pick the date from last century
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
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
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
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
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
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
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
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
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Type "hello" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Pick of current date after numbers entering in the input field
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Type "11111" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Keep the entered date on the field after pressing Enter
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Type "01/01/2021" and press Enter
    Then Check "01/01/2021" "date" is displayed

  Scenario: Keep the entered date on the field after click
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Type "01/01/2021" and press Enter
    Then Check "01/01/2021" "date" is displayed

  Scenario: Pick of current date after miscellaneous symbols entering in the input field
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Type "≈ç¬ø©" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Deleting numbers inputted after the date in the input field
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field
    Then Click on input field and check calendar is opened
    Then Type "22222" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Deleting text inputted after the date in the input field
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field
    Then Click on input field and check calendar is opened
    Then Type "hi" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Deleting miscellaneous symbols inputted after the date in the input field
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Pick "current date" and check the calendar is closed and the picked date is displayed in the input field
    Then Click on input field and check calendar is opened
    Then Type "џ®њƒ" and press Enter
    Then Check "current" "date" is displayed

  Scenario: Saving calendar state after page field click
    Then Click on "Refresh" and check "form" page has opened
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on input field and check calendar is opened
    Then Click on and check "previous" "month" is displayed
    Then Click on input field and check calendar is opened
    Then Check "previous" "month" is displayed

  Scenario: Submit button - go to thanks page
    Then Click on the "submit button"
    Then Check "Thanks" page has opened

  Scenario: Submit button - go to thanks page without fill in elements fields
    Then Click on "Refresh" and check "form" page has opened
    Then Check "first name input" has empty
    Then Check "last name input" has empty
    Then Check "job title input" has empty
    Then Check "High School radio button" has been "unselected"
    Then Check "College radio button" has been "unselected"
    Then Check "Grad School radio button" has been "unselected"
    Then Check "Male checkbox" has been "unselected"
    Then Check "Female checkbox" has been "unselected"
    Then Check "Prefer not to say checkbox" has been "unselected"
    Then Check element experience selector has a "Select an option" field text
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Click on the "submit button"
    Then Check "Thanks" page has opened

  Scenario: Backward to the page - all fields has saved its state
    Then Check "first name input" has empty
    Then Check "last name input" has empty
    Then Check "job title input" has empty
    Then Check "High School radio button" has been "unselected"
    Then Check "College radio button" has been "unselected"
    Then Check "Grad School radio button" has been "unselected"
    Then Check "Male checkbox" has been "unselected"
    Then Check "Female checkbox" has been "unselected"
    Then Check "Prefer not to say checkbox" has been "unselected"
    Then Check element experience selector has a "Select an option" field text
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Check element "submit button" has enabled
    Then Enter "Alice" in "first name input" and check data has entered
    Then Enter "Smith" in "last name input" and check data has entered
    Then Enter "QA Engineer" in "job title input" and check data has entered
    Then Click on the "High School radio button"
    Then Click on the "College radio button"
    Then Click on the "Grad School radio button"
    Then Check "High School radio button" has been "selected"
    Then Check "College radio button" has been "selected"
    Then Check "Grad School radio button" has been "selected"
    Then Click on the "Male checkbox"
    Then Click on the "Female checkbox"
    Then Click on the "Prefer not to say checkbox"
    Then Check "Male checkbox" has been "selected"
    Then Check "Female checkbox" has been "selected"
    Then Check "Prefer not to say checkbox" has been "selected"
    Then Click on the "experience selector"
    Then Click on the "0-1"
    Then Check element experience selector has a "0-1" field text
    Then Click on input field and check calendar is opened
    Then Type "01/01/2021" and press Enter
    Then Check "01/01/2021" "date" is displayed
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Check: first name input has a "Alice", last name input has a "Smith", job title input has a "QA Engineer"
    Then Check "High School radio button" has been "selected"
    Then Check "College radio button" has been "selected"
    Then Check "Grad School radio button" has been "selected"
    Then Check "Male checkbox" has been "selected"
    Then Check "Female checkbox" has been "selected"
    Then Check "Prefer not to say checkbox" has been "selected"
    Then Check element experience selector has a "0-1" field text
    Then Check "01/01/2021" "date" is displayed

  Scenario: Forward to the page - all fields has saved its state
    Then Check "first name input" has empty
    Then Check "last name input" has empty
    Then Check "job title input" has empty
    Then Check "High School radio button" has been "unselected"
    Then Check "College radio button" has been "unselected"
    Then Check "Grad School radio button" has been "unselected"
    Then Check "Male checkbox" has been "unselected"
    Then Check "Female checkbox" has been "unselected"
    Then Check "Prefer not to say checkbox" has been "unselected"
    Then Check element experience selector has a "Select an option" field text
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Check element "submit button" has enabled
    Then Enter "Alice" in "first name input" and check data has entered
    Then Enter "Smith" in "last name input" and check data has entered
    Then Enter "QA Engineer" in "job title input" and check data has entered
    Then Click on the "High School radio button"
    Then Click on the "College radio button"
    Then Click on the "Grad School radio button"
    Then Check "High School radio button" has been "selected"
    Then Check "College radio button" has been "selected"
    Then Check "Grad School radio button" has been "selected"
    Then Click on the "Male checkbox"
    Then Click on the "Female checkbox"
    Then Click on the "Prefer not to say checkbox"
    Then Check "Male checkbox" has been "selected"
    Then Check "Female checkbox" has been "selected"
    Then Check "Prefer not to say checkbox" has been "selected"
    Then Click on the "experience selector"
    Then Click on the "0-1"
    Then Check element experience selector has a "0-1" field text
    Then Click on input field and check calendar is opened
    Then Type "01/01/2021" and press Enter
    Then Check "01/01/2021" "date" is displayed
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "form" page has opened
    Then Check: first name input has a "Alice", last name input has a "Smith", job title input has a "QA Engineer"
    Then Check "High School radio button" has been "selected"
    Then Check "College radio button" has been "selected"
    Then Check "Grad School radio button" has been "selected"
    Then Check "Male checkbox" has been "selected"
    Then Check "Female checkbox" has been "selected"
    Then Check "Prefer not to say checkbox" has been "selected"
    Then Check element experience selector has a "0-1" field text
    Then Check "01/01/2021" "date" is displayed

  Scenario: Refresh the page - all fields has reset its state
    Then Check "first name input" has empty
    Then Check "last name input" has empty
    Then Check "job title input" has empty
    Then Check "High School radio button" has been "unselected"
    Then Check "College radio button" has been "unselected"
    Then Check "Grad School radio button" has been "unselected"
    Then Check "Male checkbox" has been "unselected"
    Then Check "Female checkbox" has been "unselected"
    Then Check "Prefer not to say checkbox" has been "unselected"
    Then Check element experience selector has a "Select an option" field text
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Check element "submit button" has enabled
    Then Enter "Alice" in "first name input" and check data has entered
    Then Enter "Smith" in "last name input" and check data has entered
    Then Enter "QA Engineer" in "job title input" and check data has entered
    Then Click on the "High School radio button"
    Then Click on the "College radio button"
    Then Click on the "Grad School radio button"
    Then Check "High School radio button" has been "selected"
    Then Check "College radio button" has been "selected"
    Then Check "Grad School radio button" has been "selected"
    Then Click on the "Male checkbox"
    Then Click on the "Female checkbox"
    Then Click on the "Prefer not to say checkbox"
    Then Check "Male checkbox" has been "selected"
    Then Check "Female checkbox" has been "selected"
    Then Check "Prefer not to say checkbox" has been "selected"
    Then Click on the "experience selector"
    Then Click on the "0-1"
    Then Check element experience selector has a "0-1" field text
    Then Click on input field and check calendar is opened
    Then Type "01/01/2021" and press Enter
    Then Check "01/01/2021" "date" is displayed
    Then Click on "Refresh" and check "form" page has opened
    Then Check "first name input" has empty
    Then Check "last name input" has empty
    Then Check "job title input" has empty
    Then Check "High School radio button" has been "unselected"
    Then Check "College radio button" has been "unselected"
    Then Check "Grad School radio button" has been "unselected"
    Then Check "Male checkbox" has been "unselected"
    Then Check "Female checkbox" has been "unselected"
    Then Check "Prefer not to say checkbox" has been "unselected"
    Then Check element experience selector has a "Select an option" field text
    Then Check element "input date" has a "mm/dd/yyyy" placeholder
    Then Check element "submit button" has enabled

#header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "form" page has opened
    Then Click on "Forward" and check "switch-window" page has opened