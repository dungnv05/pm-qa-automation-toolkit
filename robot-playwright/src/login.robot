*** Settings ***
Library    Playwright

*** Test Cases ***
Valid Login Should Open Dashboard
    Open Browser    https://example.com/login    chromium
    Fill Text    input[name="email"]    test@example.com
    Fill Text    input[name="password"]    secret
    Click Button    button:has-text("Login")
    Wait For Elements State    text=Dashboard    visible
    Close Browser
