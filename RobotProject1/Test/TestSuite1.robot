*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside test suite setup
Suite Teardown    Log    I am inside test suite tear down
Test Setup    Log    I am inside test setup
Test Teardown    Log    I am inside test teardown

Default Tags    sanity

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{Credentials}    Admin    admin123
&{LoginData}    username=Admin    Password=admin123

*** Keywords ***
LoginKW    
    Input Text    id=txtUsername    ${Credentials}[0]
    Input Password    id=txtPassword    ${LoginData}[Password]
    Click Button    id=btnLogin

*** Test Cases ***
# MyFirstTest
    # Log    Hello World
    

# FirstSeleniumTest
    # Open Browser    https://google.com    ie
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Automation step by step  
    # Press Keys    name=q    ENTER  
# #    Click Button    name=btnk    
    # Sleep    2    
    # Close Browser
    # Log    Test Completed
    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser    ${URL}    ie
    # Set Browser Implicit Wait    3
    # LoginKW
    # Click Element    id=welcome    
    # Click Element    link=Logout
    # Close Browser
    # Log    Test Completed        
    # Log    This test was executed by %{username} on %{os}
    
MySecondTest
    [Tags]    smoke
    Log    My first Test
    
    
MySecondTest
    Log    My Second Test
    Set Tags    regression1
    Remove Tags    regression1
    
MyThirdTest
    Log    My Third Test
    

MyFourthTest
    Log    For checking or pushing into Git repo
