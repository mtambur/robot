*** Settings ***
Documentation     A testing suite for track design
Force Tags    PROGRESSION  release  sanity  premonly  pluginsRequired
Variables     ${RESOURCES}/sut.py
Resource      ${LIBRARIES}/releases_rest_api.robot
Resource      ${LIBRARIES}/phases_rest_api.robot
Resource      ${LIBRARIES}/applications_rest_api.robot
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
Suite Setup  Dev ops Leader Persona Setup
Suite Teardown  Dev ops Leader Persona Teardown

*** Variables ***
${ReleaseOwner1}=  ReleaseOwner1

*** Testcases ***

01 - create applications environments
    create applications
    create environments and assign to applications

02 - create release with phases
    create release
    assign applications to release
    create phases
    assign environment to phases
    assign owner to phases

03 - create tasks in phases
    [Setup]  Set Current Client Name  ${ReleaseOwner1}
    on first phase create task with owner and paralel container without owners
    on second phase sync tasks with owners
    on third phase paralel container tasks with owner
    [Teardown]   Reset Current Client Name

04 - create application version and map to tasks
    [Setup]  Set Current Client Name  ${ReleaseOwner1}
    create application version
    create manual content for application version
    Assign Application Versions to first task on first phase
    Assign Application Versions to all tasks on second phase
    [Teardown]   Reset Current Client Name

05 - phase approval
    [Setup]  Set Current Client Name  ${ReleaseOwner1}
    Set Approval on first Phase
    verify cancel approval request
    verify phase will not run while it is not approved
    verify phase will not run after cancel approve
    [Teardown]   Reset Current Client Name

06 - create RA endpoint and RA tasks
    create RA Run Deployment task
    create RA Run Process task

07 - phase transition and design
    [Setup]  Set Current Client Name  ${ReleaseOwner1}
    Move last phase to be the first
    change the phase gate to Automatic
    [Teardown]   Reset Current Client Name

08 - run process by manual execution and build promotion
    [Setup]  Set Current Client Name  ${ReleaseOwner1}
    execute Run Deployment and Run Process tasks
    generate build promotion
    [Teardown]   Reset Current Client Name

*** Keywords ***

Dev ops Leader Persona Setup
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

    ${raSuiteEndpoint}=  create RA endpoint
    Set Suite Variable  ${raSuiteEndpoint}

    Init Http Client By Name  ${HOST}  ${PORT}  ${SCHEME}  ${releaseOwner.email}  AA@123tt  ${ReleaseOwner1}
    Reset Current Client Name

Dev ops Leader Persona Teardown
    Run Keyword If All Tests Passed  delete users
    Run Keyword If All Tests Passed  delete environemnts
    Run Keyword If All Tests Passed  delete applications
    Run Keyword If All Tests Passed  delete releases
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
    Delete an endpoint by id "${raSuiteEndpoint.id}"


create applications
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

create release
    set test variable  ${phaseAmount}  3
    ${dto_releaseEnv}=  Create a release by name "Release Manager" description "Release Manager" version "1.0 ${now}"
    set suite variable  ${release}  ${dto_releaseEnv}
    Update release with multiple owners  ${release}  ${releaseOwner.id}

assign applications to release
    @{appListIDs}=  create list
    ${i}=  Set variable  0
    :for  ${i}  IN RANGE  ${app_counter}
    \  append to list  ${appListIDs}  ${appsList[${i}].id}
    Assign Multiple Applications to Release  ${release.id}  @{appListIDs}

create phases
    ${phaseDTO}=  Create first phase by name "first phase" description "Release Manager tests" at release "${release.id}"
    set suite variable  ${rootPhase}  ${phaseDTO}
    set suite variable  ${phase_counter}  3
    @{phasesList}=  create list  ${phaseDTO}
    set suite variable  @{phasesList}
    ${i}=  Set variable  0
    :for  ${i}  IN RANGE  ${phase_counter}
    \  ${lastPhaseId}=  Set Variable   ${phaseDTO.id}
    \  ${phaseDTO}=  Create non first phase by name "phase_${i}" previous phase ID "${lastPhaseId}" description "Release Manager tests" at release "${release.id}"
    \  Append To List  ${phasesList}  ${phaseDTO}
    set suite variable  @{phasesList}

assign environment to phases
    ${phaseAmount}=  Get Length  ${phasesList}
    ${i}=  Set variable  0
    :for  ${i}  IN RANGE  ${phaseAmount}
    \  set test variable  ${j}  ${i}
    \  Run Keyword If  ${i} > 2  set test variable  ${j}  2
    \  Assign Multiple Environments to Phase with method PATCH  ${phasesList[${i}]}  ${envsList[${j}].id}  ${release.id}

assign owner to phases
    :for  ${phase}  IN  @{phasesList}
    \  Update phase with multiple owners with method PATCH  ${phase}  ${phaseOwner.id}  ${release.id}

on first phase create task with owner and paralel container without owners
    ${taskDTO}=  Create a task by name "task1 ${now}" description "for testing" at phase "${phasesList[0].id}" at release "${release.id}"
    set suite variable  ${firstPhaseSingleTask}  ${taskDTO}
    private Update task with multiple owners  ${firstPhaseSingleTask.id}  ${firstPhaseSingleTask.name}  ${firstPhaseSingleTask.description}  ${phasesList[0].id}  ${release.id}  ${taskOwner.id}
    #   create parallel container tasks sync to previous task
    ${taskAmount}=  set variable  3
    @{parallelTaskDTO}=  Create "${taskAmount}" parallel tasks sync to previous "${firstPhaseSingleTask.id}" and "${firstPhaseSingleTask.name}" task by name "parallel task" description "parallel task" at phase "${phasesList[0].id}" at release "${release.id}"
    set suite variable  @{firstPhaseParallelTasks}  @{parallelTaskDTO}



on second phase sync tasks with owners
    set test variable  ${task_counter}  3
    @{tasksLlist}=  Create sync "${task_counter}" tasks by name "task" description "for Release MAnager tests" at phase "${phasesList[1].id}" at release "${release.id}" return task dto
    set suite variable  @{secondPhaseSyncTasks}  @{tasksLlist}
     ${i}=  Set variable  0
    :for  ${i}  IN RANGE  ${task_counter}
    \  private Update task with multiple owners  ${tasksLlist[${i}].id}  ${tasksLlist[${i}].name}  ${tasksLlist[${i}].description}  ${phasesList[1].id}  ${release.id}  ${taskOwner.id}

on third phase paralel container tasks with owner
    set test variable  ${task_counter}  3
    @{parallelContainerDTO}=  Create paralel "${task_counter}" tasks by name "parallel task" description "Release Manager persona task" at phase "${phasesList[2].id}" at release "${release.id}" return all task DTO
     ${i}=  Set variable  0
    :for  ${i}  IN RANGE  ${task_counter}
    \  private Update task with multiple owners  ${parallelContainerDTO[${i}].id}  ${parallelContainerDTO[${i}].name}  ${parallelContainerDTO[${i}].description}  ${phasesList[2].id}  ${release.id}  ${taskOwner.id}

create application version
    @{appsVersionList}=  create list
    :for  ${i}  IN RANGE  ${app_counter}
    \  ${appVersionDTO}=  Create application version by application id "${appsList[${i}].id}" release id "${release.id}" and version "v${i}.${now}"
    \  Append To List  ${appsVersionList}  ${appVersionDTO}
    set suite variable  @{appsVersionList}

create manual content for application version
    @{manualContent}=  create list
    :for  ${i}  IN RANGE  ${app_counter}
    \  ${content}=  Create a manual content for content source id "${appsVersionList[${i}].contentSources[0].id}" with application version id "${appsVersionList[${i}].id}" with release id "${release.id}" and content "manual content on app${i} from robot test"
    \  Append To List  ${manualContent}  ${content}
    set suite variable  @{manualContent}

Assign Application Versions to first task on first phase
    ${taskDTO}=  Get task by ID  ${firstPhaseSingleTask.id}  ${firstPhaseSingleTask.phaseId}  ${release.id}
    Assign Application Versions to Task  ${taskDTO}  ${release.id}  ${appsVersionList[0].id}

Assign Application Versions to all tasks on second phase
    :for  ${task}  IN  @{secondPhaseSyncTasks}
    \  ${taskDTO}=  Get task by ID  ${task.id}  ${task.phaseId}  ${release.id}
    \  Assign Application Versions to Task  ${taskDTO}  ${release.id}  ${appsVersionList[2].id}

Set Approval on first Phase
    ${approvalDTO}=  Request Phase Approval  ${release.id}  ${phasesList[0].id}  true
    Should Be Equal As Strings  ${approvalDTO.isNeedApproval}  True

verify cancel approval request
    ${cancelRequest}=  cancel approval request  ${release.id}  ${phasesList[0].id}
    ${phaseDTO}=  Get phase by ID  ${phasesList[0].id}  ${release.id}
    Should Be Equal As Strings  ${phaseDTO.isNeedApproval}  False
    ${approvalDTO}=  Request Phase Approval  ${release.id}  ${phasesList[0].id}  true


verify phase will not run while it is not approved
    ${phaseExecution}=  Update phase-execution with error  ${release.id}  ${phasesList[0].id}  RUNNING  actionNotAllowed

verify phase will not run after cancel approve
#    ${requestApproval}=  Request Phase Approval  ${release.id}  ${phasesList[0].id}  true
    update phase to state approved  ${release.id}  ${phasesList[0].id}
    ${cancelApproval}=  Cancel Approve Phase  ${release.id}  ${phasesList[0].id}
    ${phaseExecution}=  Update phase-execution with error  ${release.id}  ${phasesList[0].id}  RUNNING  actionNotAllowed

create RA Run Deployment task
    @{allEPdto}=  Get All Endpoints
    :for  ${epDTO}  IN  @{allEPdto}
    \  set test variable  ${raEP}  ${epDTO}
    \  Exit For Loop If  '${epDTO.name}' == 'RA endpint ${now}'
    ${pluginServiceDTO}=  Get all Plugins tasks
    ${runDeplymentID}=  return Run Deployment Task ID  @{pluginServiceDTO}
    run deploymnet parameters IDs  ${runDeplymentID}
    ${raTaskDTO}=  create RA Run Deployment Task with valid parameters with no prev or next task  ${release.id}  ${phasesList[3].id}  RA Run Deployment ${now}  ${applicationID}  NBA  ${projectID}  P1  ${deploymentPlanID}  DP1  ${buildID}  1  ${environmentID}  Environment for Default Architecture  ${appsVersionList[0].id}  ${epDTO.id}  ${runDeplymentID}
    set suite variable  ${raTaskDTO}


create RA Run Process task
    @{allEPdto}=  Get All Endpoints
    :for  ${epDTO}  IN  @{allEPdto}
    \  set test variable  ${raEP}  ${epDTO}
    \  Exit For Loop If  '${epDTO.name}' == 'RA endpint ${now}'
    ${pluginServiceDTO}=  Get all Plugins tasks
    ${runProcesID}=  return Run Process Task ID  @{pluginServiceDTO}
    return Run process parameters IDs  ${runProcesID}
    ${runProcessDTO}=  create Ra Run Process Task with valid parameters  ${release.id}  ${phasesList[3].id}  RA Run Process ${now}  ${RPapplicationID}  NBA  ${RPenvironmentID}  Environment for Default Architecture  ${RPprocessID}  Processes>p1  ${RPtagID}  Latest  ${appsVersionList[0].id}  ${epDTO.id}  ${runProcesID}
    set suite variable  ${runProcessDTO}

return Run Process Task ID
    [Arguments]  @{pluginTasks}
    ${tasksAmount}=  Get Length  ${pluginTasks}
    :for  ${i}  IN RANGE  ${tasksAmount}
    \  Return From Keyword If  '${pluginTasks[${i}].name}' == 'Run Process'  ${pluginTasks[${i}].id}

return Run process parameters IDs
    [Arguments]  ${pluginTaskID}
    ${runProcessIDs}=  Get parameters IDs of external Task  ${pluginTaskID}
    ${parametersAmount}=  Get Length  ${runProcessIDs.templateParameters}
    :for  ${i}  IN RANGE  ${parametersAmount}
     \  Run Keyword IF  '${runProcessIDs.templateParameters[${i}].name}' == 'application'  set suite variable  ${RPapplicationID}  ${runProcessIDs.templateParameters[${i}].id}
     \  Run Keyword IF  '${runProcessIDs.templateParameters[${i}].name}' == 'process'  set suite variable  ${RPprocessID}  ${runProcessIDs.templateParameters[${i}].id}
     \  Run Keyword IF  '${runProcessIDs.templateParameters[${i}].name}' == 'tag'  set suite variable  ${RPtagID}  ${runProcessIDs.templateParameters[${i}].id}
     \  Run Keyword IF  '${runProcessIDs.templateParameters[${i}].name}' == 'manifest'  set suite variable  ${RPmanifestID}  ${runProcessIDs.templateParameters[${i}].id}
     \  Run Keyword IF  '${runProcessIDs.templateParameters[${i}].name}' == 'environment'  set suite variable  ${RPenvironmentID}  ${runProcessIDs.templateParameters[${i}].id}

return Run Deployment Task ID
    [Arguments]  @{pluginTasks}
    ${tasksAmount}=  Get Length  ${pluginTasks}
    :for  ${i}  IN RANGE  ${tasksAmount}
    \  Return From Keyword If  '${pluginTasks[${i}].name}' == 'Run Deployment'  ${pluginTasks[${i}].id}

run deploymnet parameters IDs
     [Arguments]  ${pluginTaskID}
     ${runDeploymentTemplate}=  Get parameters IDs of external Task  ${pluginTaskID}
     ${applicationParameter}=  Find Parameter Template in Parameters List By Name  application  @{runDeploymentTemplate.templateParameters}
     ${projectParameter}=  Find Parameter Template in Parameters List By Name  project  @{runDeploymentTemplate.templateParameters}
     ${deploymentPlanParameter}=  Find Parameter Template in Parameters List By Name  deploymentPlan  @{runDeploymentTemplate.templateParameters}
     ${buildParameter}=  Find Parameter Template in Parameters List By Name  build  @{runDeploymentTemplate.templateParameters}
     ${environmentParameter}=  Find Parameter Template in Parameters List By Name  environment  @{runDeploymentTemplate.templateParameters}

     Set Suite Variable  ${applicationID}  ${applicationParameter.id}
     Set Suite Variable  ${projectID}  ${projectParameter.id}
     Set Suite Variable  ${deploymentPlanID}  ${deploymentPlanParameter.id}
     Set Suite Variable  ${buildID}  ${buildParameter.id}
     Set Suite Variable  ${environmentID}  ${environmentParameter.id}

execute Run Deployment and Run Process tasks
    Update phase-execution of phase "${phasesList[3].id}" of release "${release.id}" with status "RUNNING"
    Wait Until Keyword Succeeds  30 sec  1 sec  verify phase-execution of phase "${phasesList[3].id}" of release "${release.id}" is in status "RUNNING"
    Wait Until Keyword Succeeds  30 sec  1 sec  verify task-execution "${runProcessDTO.id}" of phase "${phasesList[3].id}" of release "${release.id}" is in status "RUNNING"
    Wait Until Keyword Succeeds  30 sec  1 sec  verify task-execution "${raTaskDTO.id}" of phase "${phasesList[3].id}" of release "${release.id}" is in status "RUNNING"
    Wait Until Keyword Succeeds  30 sec  1 sec  verify task-execution "${runProcessDTO.id}" of phase "${phasesList[3].id}" of release "${release.id}" is in status "DONE"
    Wait Until Keyword Succeeds  30 sec  1 sec  verify task-execution "${raTaskDTO.id}" of phase "${phasesList[3].id}" of release "${release.id}" is in status "DONE"

Move last phase to be the first
    ${newFirstPhase}=  Update phase Position to first  ${release.id}  ${phasesList[3].id}  ${phasesList[0].id}

change the phase gate to Automatic
    ${newFirstPhaseDTO}=  Get phase by ID  ${phasesList[3].id}  ${release.id}
    ${newFirstPhaseDTO.approvalGate}=  Parse Enum Json  com.ca.rp.dtos.interfaces.PhaseApprovalGateDto  AUTOMATIC
    ${newFirstPhase_json}=  Turn Dto To Json  ${newFirstPhaseDTO}
    ${phase_automaticGate}=  Update phase by id with json object  ${release.id}  ${phasesList[3].id}  ${newFirstPhase_json}

generate build promotion
    ${buildPromotion}=  Send build notification of application "${appsList[0].name}" with version "${appsVersionList[0].name}" and build "1" "ok"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${runProcessDTO.id}" of phase "${phasesList[3].id}" of release "${release.id}" is in status "RUNNING"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${raTaskDTO.id}" of phase "${phasesList[3].id}" of release "${release.id}" is in status "RUNNING"

