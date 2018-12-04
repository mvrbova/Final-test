*** Settings ***
Resource    ../Keywords/Hrm_Keywords.robot
Variables    ../Objects/Hrm_Objects.py
Variables    ../Resources/Test_Data.py
Library    SeleniumLibrary    
Test Setup    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
Test Teardown    Close Browser

*** Variables ***
${prefix}     ${EMPTY}   
${url}    https://opensource-demo.orangehrmlive.com/
${browser}    chrome

*** Test Cases ***
Test Get Vacancy Name
    Input Text    ${username_input}    Admin
    Input Password    ${password_input}    admin123
    Click Button    ${login_button}
    Wait Until Page Contains Element    ${recruitment_tab}
    Wait Until Page Contains Element    ${vacancies_subtab}
    Click Element    ${open_vacancy_form}
    Select From List By Index    ${job_title_select}    Account Clerk
    Input Text    ${vacancy_name_input}    test
    Input Text    ${hiring_manager_input}    Linda Anderson
    Input Text    ${number_of_positions_input}    2
    Input Text    ${description_textarea}    asfsdf
    Select Checkbox    ${publish_in_rss_checkbox}
    Click Button    ${save_vacancy_button}


***inactive***    
Test Delete Vacancy
    Wait Until Page Contains Element    ${check_select_row}
    
    

***inactive***            
Test
    ${vacancy_name}    Get Vacancy Name    ${prefix}