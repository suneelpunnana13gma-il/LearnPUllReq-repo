*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                about:Blank                chrome  


*** Variables ***
${PARABANK_URL}                https://parabank.parasoft.com/parabank/index.htm            


*** Test Cases ***
Login to Application    
    [Documentation]    This is login testcase for parabank website
    [Tags]             smoke    
    GoTo               ${PARABANK_URL}
    ClickText          Register
    
    