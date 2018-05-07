*** Settings ***
Documentation     A testing suite for track design
Force Tags    PROGRESSION  release  sanity  pluginsRequired
Variables     ${RESOURCES}/sut.py
Resource      ${LIBRARIES}/releases_rest_api.robot
Resource      ${LIBRARIES}/phases_rest_api.robot
Resource      ${LIBRARIES}/applications_rest_api.robot
Resource      ${LIBRARIES}/application_source_rest_api.robot
Resource      ${LIBRARIES}/environments_rest_api.robot
Resource      ${LIBRARIES}/tasks_rest_api.robot
Resource      ${LIBRARIES}/execution_rest_api.robot
Resource      ${LIBRARIES}/track_api.robot
Resource      ${LIBRARIES}/application_versions_rest_api.robot
Resource      ${LIBRARIES}/users_rest_api.robot
Resource      ${LIBRARIES}/content_rest_api.robot
Resource      ${LIBRARIES}/content_report_rest_api.robot
Resource      ${LIBRARIES}/plugin_rest_api.robot
Resource      ${LIBRARIES}/plugin_service_api.robot
Resource      ${LIBRARIES}/plugin_service_template_parameter_api.robot
Resource      ${LIBRARIES}/build_notification_rest_api.robot
Library       com.ca.rp.robot.NolioDtoUtils
Library       com.ca.cdd.commons.robot.NolioJsonUtils




Test Timeout  5 minutes
Suite Setup  Administrator Persona Setup
Suite Teardown  Administrator Persona Teardown

*** Variables ***
${ReleaseOwner1}=  ReleaseOwner1

*** Testcases ***

01 - create local applications environments
    create local applications

02 - create same environments on multipple applications
    create environments and assign to applications

03.01 - create external applications
    [Tags]  premonly
    ${dto}=  create RA endpoint
    Set Suite Variable  ${raSuiteEndpoint}  ${dto}
    Import external RA Apps  ${raSuiteEndpoint}

03.02 - NEGATIVE - import external applications from same endpoint a second time
    [Documentation]  Depends on previous test already importing from the same endpoint
    [Tags]  premonly
    ${response}=  Import External RA Apps Expecting A Failure  ${raSuiteEndpoint}  endpointAlreadyInUse
    Should Match Regexp  ${response}  "messageCode":"endpointAlreadyInUse"

04 - update environments name
    update environment name

05 - create Endpoints to all types of plugins
    create serviceNow endpoint
    create REST endpoint
    create Blaze Meter endpoint
    create Rally endpoint

*** Keywords ***

Administrator Persona Setup
    Init Http Client  ${HOST}  ${PORT}  ${SCHEME}  ${USER}  ${PASSWORD}
    ${now1}=  Get Time  epoch
    set suite variable  ${now}  ${now1}
    ${releaseOwner}=  Create a User with Role "DESIGNER" by first name "Rowner${now}" last name "RMowner${now}" email "RMowner${now}@ca.com" password "AA@123tt"
    User by id "${releaseOwner.id}" exists
    set suite variable  ${releaseOwner}
    ${phaseOwner}=  Create a User with Role "DESIGNER" by first name "Powner${now}" last name "Powner${now}" email "Powner${now}@ca.com" password "AA@123tt"
    User by id "${phaseOwner.id}" exists
    set suite variable  ${phaseOwner}
    ${taskOwner}=  Create a User with Role "DESIGNER" by first name "Towner${now}" last name "Towner${now}" email "Towner${now}@ca.com" password "AA@123tt"
    User by id "${taskOwner.id}" exists
    set suite variable  ${taskOwner}
    Init Http Client By Name  ${HOST}  ${PORT}  ${SCHEME}  ${releaseOwner.email}  AA@123tt  ${ReleaseOwner1}
    Reset Current Client Name

Administrator Persona Teardown
    Run Keyword If All Tests Passed  delete users
    Run Keyword If All Tests Passed  delete environemnts
    Run Keyword If All Tests Passed  delete applications
    Run Keyword If All Tests Passed  delete endpoint

delete users
    Delete a user  ${releaseOwner.id}  ok
    Delete a user  ${phaseOwner.id}  ok
    Delete a user  ${taskOwner.id}  ok

delete environemnts
    :for  ${i}  IN RANGE  ${app_counter}
    \  delete environments from application  ${i}

delete environments from application
    [Arguments]  ${appIndex}
    :for  ${i}  IN RANGE  ${env_counter}
    \  Delete environment by id "${envsList[${i}].id}" and application id "${appsList[${appIndex}].id}"

delete applications
    :for  ${i}  IN RANGE  ${app_counter}
    \  Delete application by id "${appsList[${i}].id}"

delete releases
    Delete a release by id "${release.id}"

delete endpoint
    @{allEpDTO}=  Get All Endpoints
    :for  ${ep}  IN  @{allEpDTO}
    \  Delete an endpoint by id "${ep.id}"



create local applications
    set suite variable  ${app_counter}  3
    @{appsList}=  create list
    ${i}=  Set variable  0
    :for  ${i}  IN RANGE  ${app_counter}
    \  ${appDTO}=  Create application by name "Release Manager App${i} ${now}" description "Release Manager App for testing release manager persona"
    \  Append To List  ${appsList}  ${appDTO}
    set suite variable  @{appsList}

create environments and assign to applications
    set suite variable  ${env_counter}  3
    @{envsList}=  create list
    ${i}=  Set variable  0
    :for  ${i}  IN RANGE  ${env_counter}
    \  ${envDTO}=  Create Environment by name "Env${i} ${now}" description "environment for testing release manager persona" under application with id "${appsList[${i}].id}"
    \  Append To List  ${envsList}  ${envDTO}
    \  assign applicatio to environment  ${envsList[${i}]}  ${i}
    set suite variable  @{envsList}

assign applicatio to environment
    [Arguments]  ${envDTO}  ${index}
    ${i}=  Set variable  0
    :for  ${i}  IN RANGE  ${app_counter}
    \  Run Keyword if  ${i} <> ${index}  Assign Existing Environment To Application  ${envDTO}  ${appsList[${i}].id}

Import external RA Apps
    [Arguments]  ${raEndpoint}
    ${raAPP}=  Import external App  ${raEndpoint.name}  ${raEndpoint.id}  ${raEndpoint.lastConnectivityStatus}  ${raEndpoint.lastConnectivityTestDate}
    ...                             ${raEndpoint.pluginService.id}  ${raEndpoint.pluginService.parameters[0].id}  ${raEndpoint.pluginService.parameters[0].templateParameterId}
    ...                             ${raEndpoint.pluginService.parameters[0].value}  ${raEndpoint.pluginService.parameters[1].id}  ${raEndpoint.pluginService.parameters[1].templateParameterId}
    ...                             ${raEndpoint.pluginService.parameters[1].value}  ${raEndpoint.pluginService.parameters[2].id}  ${raEndpoint.pluginService.parameters[2].templateParameterId}
    ...                             ${raEndpoint.pluginService.parameters[2].value}  ${raEndpoint.pluginService.templateId}  ${raEndpoint.pluginService.templateName}

Import External RA Apps Expecting A Failure
    [Arguments]  ${raEndpoint}  ${expected}
    ${bodyJson}=  Catenate  {"name": "${raEndpoint.name}","endPoint": {"className": "EndpointDto","id": ${raEndpoint.id},
    ...           "lastConnectivityStatus": "${raEndpoint.lastConnectivityStatus}","lastConnectivityTestDate": ${raEndpoint.lastConnectivityTestDate},"connectivityArguments": [],"name": "${raEndpoint.name}"
    ...           ,"pluginService": {"className": "PluginServiceDto","id": ${raEndpoint.pluginService.id},"parameters":
    ...           [{"className": "PluginServiceParameterDto","id": ${raEndpoint.pluginService.parameters[0].id},"templateParameterId": ${raEndpoint.pluginService.parameters[0].templateParameterId},"value": "${raEndpoint.pluginService.parameters[0].value}"},
    ...           {"className": "PluginServiceParameterDto","id": ${raEndpoint.pluginService.parameters[1].id},"templateParameterId": ${raEndpoint.pluginService.parameters[1].templateParameterId},"value": "${raEndpoint.pluginService.parameters[1].value}"},
    ...           {"className": "PluginServiceParameterDto","id": ${raEndpoint.pluginService.parameters[2].id},"templateParameterId": ${raEndpoint.pluginService.parameters[2].templateParameterId},"value": "${raEndpoint.pluginService.parameters[2].value}"}],
    ...           "templateId": ${raEndpoint.pluginService.templateId},"templateName": "${raEndpoint.pluginService.templateName}","isMissingParameters": false},"type": "ENDPOINT","inUse": false,"authorizedParties": [],"hasPermissions": true}}
    ${response_json}=  Execute Rest Post  ${APPLICATION_SOURCES_URL}  ${bodyJson}  ${expected}
    [Return]  ${response_json}

update environment name
#    set suite variable  ${env_counter}  3
    ${i}=  Set variable  0
    :for  ${i}  IN RANGE  ${env_counter}
    \  ${envDTO}=  Update environment by id "${envsList[${i}].id}" with name "new_name_${i}_${now}" and description "edit name by robot test" under application id "${appsList[0].id}"
