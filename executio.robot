*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                 about:Blank                chrome


*** Variables ***
${PARABANK_URL}        https://parabank.parasoft.com/parabank/index.htm
${Usermame}
${Password}



*** Test Cases ***
Login to Application    
    [Documentation]    This is Register testcase for parabank website
    [Tags]             smoke
    GoTo               ${PARABANK_URL}
    ClickText          Register
    VerifyText         Signing up is easy!
    ClickText          Register
    VerifyText         Signing up is easy!
    TypeText           First Name                  Copado
    TypeText           Last Name                   Suneel
    TypeText           Address                     31 George Steet, Sydney
    TypeText           City                        Sydney
    TypeText           State                       NSW
    TypeText           Zip Code                    2769
    TypeText           Phone                       0474387347
    TypeText           SSN                         12345612771
    TypeText           Username                    copadouser22               anchor=SSN:
    TypeText           Password                    copadouser22               anchor=Confirm
    Typetext           Confirm                     copadouser22
    ClickText          REGISTER                    anchor=Confirm

Customer Login
    [Documentation]    This is Customer Login
    [Tags]             smoke
    TypeText           Username                    ${Usermame}
    TypeText           Password                    ${Password}
    ClickText          LOG IN

