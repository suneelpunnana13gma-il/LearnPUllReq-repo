*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                 about:Blank                chrome


*** Variables ***
${PARABANK_URL}        https://parabank.parasoft.com/parabank/index.htm



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
    TypeText           Username                    copadouser221              anchor=SSN:
    TypeText           Password                    copadouser221              anchor=Confirm
    Typetext           Confirm                     copadouser221
    ClickText          REGISTER                    anchor=Confirm

Open New Account
    [Tags]             Sanity
    ClickText          Open New Account
    DropDown           type                        SAVINGS
    ClickText          Open New Account            anchor=Log Out
    VerifyText         Congratulations
    ClickItem          newAccountId
    DropDown           month                       January
    ClickText          Go
    ClickText          Accounts Overview



