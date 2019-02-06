*** Variables ***
# Server Details
${DEV_ENV}             http://automationpractice.com/index.php?controller=authentication&back=my-account
${QA_ENV}              http://automationpractice.com/index.php?controller=authentication&back=my-account
${UAT_ENV}             http://automationpractice.com/index.php?controller=authentication&back=my-account
${PROD_ENV}            http://automationpractice.com/index.php?controller=authentication&back=my-account
${ENV}                 ${QA_ENV}

# Browser Details
# ${BROWSER}             headlesschrome
# ${BROWSER}             headlessfirefox
${BROWSER}             chrome
# ${BROWSER}             firefox
# ${BROWSER}             safari
${WINDOW_WIDTH}        1900
${WINDOW_HEIGHT}       1200

# Default Timeout
${SELENIUM_TIMEOUT}    60