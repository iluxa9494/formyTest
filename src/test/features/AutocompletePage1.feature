Feature: Autocomplete page

  Background:
    Then Open browser and go to Formy site
    Then Go to "Autocomplete" page

    #стиль

 #функционал
 #ввод данных
 #сохранение состояний: обновить/назад/вперед

  #кейс через address
#  Scenario: Enter data in the fields
#    Then Enter "Menlo Park" in Address fields
#    Then Проверим что в поле Address отобразилось "Menlo Park, California, USA", City - "Menlo Park", State - "CA", а в поле Coutnry "United States of America"
#    Then Введем "1 Hacker Way" в поле Street address
#    Then Проверим что поле Address, Street address, Street address 2, City, State, Zip code, Country остались без изменений
#    Then Введем "701 Laurel" в поле Street address 2
#    Then Проверим что в поле Street address 2 отобразилось "701 Laurel", а поля Address, Street address, Street address, City, State, Zip code, Country остались без изменений
#    Then Введем "94025" в поле Zip code
#    Then Проверим что в поле Zip code отобразилось "94025", а поля Address, Street address, Street address 2, City, State, Country остались без изменений
#
#  Scenario: Сброс данных из полей ввода после возврата на страницу
#  Then: Проверим что поля "Address", "Street address", "Street address 2", "City", "State", "Zip code", "Country" заполнены
#  Then: Нажмем на лого "Formy" и проверим что произошел переход на "Welcome Page"
#  Then: Перейдем на Autocomplete page и проверим что поля "Address", "Street address", "Street address 2", "City", "State", "Zip code", "Country" не заполнены
#
#  Scenario: Поля ввода - цвет серый для всех полей, если Focus (подсветка) для всех полей при вводе - синий
#
#  Scenario: Dropdown для поля Address отображение (отсутсвие у остальных полей), сортировка, кликабельность (геолокация)
#
#  Scenario: Обновление страницы - сброс всех полей
#
#  Scenario: "Назад" и "Вперед" - сохранение данных во всех полях
#
#  Scenario: Заголовки - правописание, стиль текста (черный, жирный)
#
#  Scenario: Placeholders и печатный текст внутри полей - правописание, стиль (серый, жирный)
#
#  Scenario: Поля ввода - возможность скопировать/вставить текст во всех полях
#
#  Scenario: Поля ввода - возможность ввода специальных символов, даты, время, цифр, букв
#
#  Scenario: Поля ввода - ввод нулевого (null) значения (кликнуть, ввести - стереть, кликнуть в другом поле проверив состояние этого)
#
#  Scenario: Поля ввода - ввод пробела (кликнуть, ввод пробела, кликнуть в другом поле, кликнуть вновь в это поле и проверить символы - будет)
#
#  Scenario: Поля ввода: Ввод максимально возможного (предполагаемого из-за отсутствия maxlenght) количества символов, для "Address" - 100, "Street address" - 100, "Street address 2" - 100, "City" - 100, "State" - 100, "Zip code" - 20, "Country" - 100
#
#  Scenario: Поля ввода: Ввод минимально возможного (предполагаемого из-за отсутствия minlenght) количества символов то есть оставить поля пустыми (каждое прокликать)
##("Введем данные для Кампании/Медиаплана Name = {string}, Org= {string}, Agency= {string}, Client= {string}, Budget= {string}")
## пример     public void fillAllMediaplanInputsWith(String arg0, String arg1, String arg2, String arg3, String arg4) {
#  #     And Введем данные для Медиаплана Name = "ATAdvertise", Org= "КИНОМАКС", Agency= "АЙ-БРЭНД агентство", Client= "YOKOHAMA RUSSIA (ЙОКОХАМА РУС)", Budget= "100"

  #header
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