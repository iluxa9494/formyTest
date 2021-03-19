Feature: Checkbox page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Checkbox" page

#  Scenario: Стили title
#
#  Scenario: Стили для checkboxes
#стиль

 #функционал
 #ввод данных
 #сохранение состояний: обновить/назад/вперед
    #Кликабельность
#  Scenario: Чекбокс не выбран по клику по title
#    Then Кликнем по title "Checkbox 1"
#    Then Кликнем по title "Checkbox 2"
#    Then Кликнем по title "Checkbox 3"
#    Then Проверим что все чекбоксы не выбраны
#
#  Scenario: Кликабельность all checkboxes
#    Then Кликнем по чекбоксу "Checkbox 1"
#    Then Кликнем по чекбоксу "Checkbox 2"
#    Then Кликнем по чекбоксу "Checkbox 3"
#    Then Проверим что все чекбоксы выбраны
#
#  Scenario: "Обновить" - сброс чекбоксов
#    Then Клик по "Обновить"
#    Then Проверим что все чекбоксы не выбраны
#
#  Scenario: "Обновить" - чекбоксы остаются не выбранными
#    Then Клик по "Обновить"
#    Then Проверим что все чекбоксы не выбраны
#
#  Scenario: "Назад" - сохранение состояния чекбоксов (не выбран)
#    Then Клик по "Formy" и проверим что перешли на Welcome page
#    Then Клик по "Назад" и проверим что вернулись на страницу "checkbox"
#    Then Проверим что все чекбоксы не выбраны
#
#  Scenario: "Назад" - сохранение состояния чекбоксов (выбраны)
#    Then Кликнем по чекбоксу "Checkbox 1"
#    Then Кликнем по чекбоксу "Checkbox 2"
#    Then Кликнем по чекбоксу "Checkbox 3"
#    Then Проверим что все чекбоксы выбраны
#    Then Клик по "Formy" и проверим что перешли на Welcome page
#    Then Клик по "Назад"
#    Then Проверим что все чекбоксы выбраны
#
#  Scenario: "Вперед" - сохранение состояния чекбоксов (выбраны)
#    Then Клик по "Formy" и проверим что перешли на Welcome page
#    Then Go to Checkbox page
#    Then Кликнем по чекбоксу "Checkbox 1"
#    Then Кликнем по чекбоксу "Checkbox 2"
#    Then Кликнем по чекбоксу "Checkbox 3"
#    Then Проверим что все чекбоксы выбраны
#    Then Клик по "Назад"
#    Then Клик по "Вперед"
#    Then Проверим что все чекбоксы выбраны
#
#  Scenario: "Вперед" - сохранение состояния чекбоксов (не выбраны)
#    Then Клик по "Formy" и проверим что перешли на Welcome page
#    Then Go to Checkbox page
#    Then Проверим что все чекбоксы не выбраны
#    Then Клик по "Назад"
#    Then Клик по "Вперед"
#    Then Проверим что все чекбоксы не выбраны

   #header
  Scenario: Header: Formy referral check
    Then Click on "Formy" and check "Welcome to Formy" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "Welcome to Formy" page has opened

  Scenario: Header: Form referral check
    Then Click on "Form" and check "form" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "form" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Autocomplete" and check "autocomplete" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "autocomplete" page has opened

  Scenario: Header, Components: Buttons referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Buttons" and check "buttons" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "buttons" page has opened

  Scenario: Header, Components: Autocomplete referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Datepicker" and check "datepicker" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "datepicker" page has opened

  Scenario: Header, Components: Drag and Drop referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Drag and Drop" and check "dragdrop" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "dragdrop" page has opened

  Scenario: Header, Components: Dropdown referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Dropdown" and check "dropdown" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "dropdown" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Enabled and disabled elements" and check "enabled" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "enabled" page has opened

  Scenario: Header, Components: Enabled and disabled elements referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "File Upload" and check "fileupload" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "fileupload" page has opened

  Scenario: Header, Components: Key and Mouse Press referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Key and Mouse Press" and check "keypress" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "keypress" page has opened

  Scenario: Header, Components: Modal referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Modal" and check "modal" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "modal" page has opened

  Scenario: Header, Components: Page Scroll referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Page Scroll" and check "scroll" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "scroll" page has opened

  Scenario: Header, Components: Radio Button referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Radio Button" and check "radiobutton" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "radiobutton" page has opened

  Scenario: Header, Components: Switch Window referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Switch Window" and check "switch-window" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "switch-window" page has opened

  Scenario: Header, Components: Complete Web Form referral check
    Then Click on "Components" and check inside a dropdown list with: "Autocomplete", "Buttons", "Checkbox", "Datepicker", "Drag and Drop", "Dropdown", "Enabled and disabled elements", "File Upload", "Key and Mouse Press", "Modal", "Page Scroll", "Radio Button", "Switch Window", "Complete Web Form"
    Then Click on "Complete Web Form" and check "form" page has opened
    Then Click on "Backward" and check "checkbox" page has opened
    Then Click on "Forward" and check "form" page has opened