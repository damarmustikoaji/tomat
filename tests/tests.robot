*** Settings ***
Library         RequestsLibrary

*** Variables ***
${HOST}         http://thetestingworldapi.com

*** Test Cases ***
TEST_1_VALIDATION_STATUS_CODE
    Create Session      API_TESTING                             ${HOST}         verify=True
    ${GET_RESPONSE}=    Get On Session                          API_TESTING     /api/studentsDetails/2676507
#    log to console      ${GET_RESPONSE.status_code}
#    log to console      ${GET_RESPONSE.content}
    ${STATUS_CODE}=     convert to string                       ${GET_RESPONSE.status_code}
    should be equal     ${STATUS_CODE}                          200