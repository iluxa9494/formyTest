Feature: Scroll page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Page Scroll" page

#web layout
  Scenario: Page title Large page content - displays correctly
    Then Check "Page Scroll" has page title "Large page content"

  Scenario: Text paragraphs - displays correctly
    Then Check "1st" text paragraph has a "Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla." text
    Then Check "2d" text paragraph has a "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla." text
    Then Check "3d" text paragraph has a "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." text
    Then Check "4th" text paragraph has a "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur." text
    Then Check "5th" text paragraph has a "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat." text
    Then Check "6th" text paragraph has a "Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros." text
    Then Check "7th" text paragraph has a "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros." text
    Then Check "8th" text paragraph has a "Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros." text

  Scenario: Full Name and Date titles - display correctly
    Then Check "Full Name" title has the "Full Name" text
    Then Check "Date" title has the "Date" text

  Scenario: Full Name and Date placeholders - display correctly
    Then Check "Full Name" placeholder has a "Full name" text
    Then Check "Date" placeholder has a "MM/DD/YYYY" text

#functional
  Scenario: Full Name and Date fields - unselected, enabled
    Then Check "Full name" field has been unselected, enabled
    Then Check "Date" field has been unselected, enabled

  Scenario: Full Name field - enable for entering data
    Then Enter "џ®њƒ" in the "full name" field and check data has entered
    Then Clear the "full name" field via delete
    Then Enter "01/01/2021" in the "full name" field and check data has entered
    Then Clear the "full name" field via delete
    Then Enter "00:00:00" in the "full name" field and check data has entered
    Then Clear the "full name" field via delete
    Then Enter "11111" in the "full name" field and check data has entered
    Then Clear the "full name" field via delete
    Then Enter "Menlo Park" in the "full name" field and check data has entered

  Scenario: Date field - enable for entering data
    Then Enter "џ®њƒ" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "01/01/2021" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "00:00:00" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "11111" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "Menlo Park" in the "date" field and check data has entered

  Scenario: Full name field - enable to enter max length
#  100 symbols for full name field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in the "full name" field and check data has entered
    Then Clear the "full name" field via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in the "full name" field and check data has entered

  Scenario: Date field - enable to enter max length
#  100 symbols for date field
    Then Enter "MenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenloMenlo" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo Menlo" in the "date" field and check data has entered

  Scenario: Date field - enable to enter different date formats
    Then Enter "012/01/2021" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "2021/01/05" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "01/2021/21" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "01/010/2021" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "01/01/21" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "January/01/2021" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "Jan/01/2021" in the "date" field and check data has entered
    Then Clear the "date" field via delete
    Then Enter "Jan 1st, 2021" in the "date" field and check data has entered

  Scenario: Scroll page - scroll down to the page bottom
    Then Scroll page on "500 px down to the page bottom"
    Then Check scroll element has been "bottom" position

  Scenario: Scroll page - scroll up to the page top
    Then Scroll page on "500 px down to the page bottom"
    Then Check scroll element has been "bottom" position
    Then Scroll page on "500 px up to the page top"
    Then Check scroll element has been "top" position

  Scenario: Scroll page - scroll down to the page middle
    Then Scroll page on "250 px down to the page middle"
    Then Check scroll element has been "middle" position

  Scenario: Scroll page - scroll up to the page middle
    Then Scroll page on "500 px down to the page bottom"
    Then Check scroll element has been "bottom" position
    Then Scroll page on "250 px up to the page middle"
    Then Check scroll element has been "middle" position

  Scenario: Refresh the page - scroll elements saved its position
    Then Check scroll element has been "top" position
    Then Scroll page on "500 px down to the page bottom"
    Then Check scroll element has been "bottom" position
    Then Click on "Refresh" and check "scroll" page has opened
    Then Check scroll element has been "after refresh bottom" position

  Scenario: Backward to the page - scroll elements saved its position
    Then Check scroll element has been "top" position
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Scroll page on "500 px down to the page bottom"
    Then Check scroll element has been "bottom" position
    Then Click on "Forward" and check "form" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Check scroll element has been "bottom" position

  Scenario: Forward to the page - scroll elements saved its position
    Then Check scroll element has been "top" position
    Then Scroll page on "500 px down to the page bottom"
    Then Check scroll element has been "bottom" position
    Then Click on "Backward" and check "Welcome to Formy" page has opened
    Then Click on "Forward" and check "scroll" page has opened
    Then Check scroll element has been "bottom" position

#  header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Checkbox referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Checkbox" and check "checkbox" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "checkbox" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "scroll" page has opened
    Then Click on "Forward" and check "form" page has opened