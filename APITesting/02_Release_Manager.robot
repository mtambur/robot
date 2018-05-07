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
Library       com.ca.rp.robot.NolioDtoUtils
Library       com.ca.cdd.commons.robot.NolioJsonUtils



Test Timeout  5 minutes
Suite Setup  Release Manager Persona Setup
Suite Teardown  Release Manager Persona Teardown


*** Test Cases ***
01 - create applications environments and users
    create applications
    create environments and assign to applications
    create users

02 - create release with phases and tasks
    create release
    assign applications to release
    create phases
    assign environment to phases
    assign owner to phases
    on first phase create task with owner and paralel container without owners
    on second phase sync tasks with owners
    on third phase paralel container tasks with owner


03 - create releases from template
    Duplicate Release with Same Name and New Version
    Duplicate Release with Same Version and New Name
    Duplicate Release with New Version and New Name

04 - create application version
    create application version
    create manual content for application version
    Assign Application Versions to first task on first phase
    Assign Application Versions to all tasks on second phase

05 - set dependencies between applications versions
    set dependencies between applications versions on APP0 and APP1
    verify there is no conflicts
    set dependencies between applications versions on APP2 and APP1
    verify there is conflicts

06 - Create Track With Milestones
    Create Track With Milestones
    add releases to track and verify phases mapped to MS
    Verfiy all Releass are Assigned To Track

07 - Reports Validation
    validate Content Report
    valdate Application Report
    valdate Environment Report

*** Keywords ***
Release Manager Persona Setup
    Init Http Client  ${HOST}  ${PORT}  ${SCHEME}  ${USER}  ${PASSWORD}
    ${now1}=  Get Time  epoch
    set suite variable  ${now}  ${now1}

Release Manager Persona Teardown
    Run Keyword If All Tests Passed  delete users
    Run Keyword If All Tests Passed  delete environemnts
    Run Keyword If All Tests Passed  delete applications
    Run Keyword If All Tests Passed  delete releases
    Run Keyword If All Tests Passed  delete tracks

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

create users
    ${releaseOwner}=  Create a User with Role "DESIGNER" by first name "Rowner${now}" last name "RMowner${now}" email "RMowner${now}@ca.com" password "AA@123tt"
    User by id "${releaseOwner.id}" exists
    set suite variable  ${releaseOwner}
    ${phaseOwner}=  Create a User with Role "DESIGNER" by first name "Powner${now}" last name "Powner${now}" email "Powner${now}@ca.com" password "AA@123tt"
    User by id "${phaseOwner.id}" exists
    set suite variable  ${phaseOwner}
    ${taskOwner}=  Create a User with Role "DESIGNER" by first name "Towner${now}" last name "Towner${now}" email "Towner${now}@ca.com" password "AA@123tt"
    User by id "${taskOwner.id}" exists
    set suite variable  ${taskOwner}

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
    set suite variable  ${phase_counter}  2
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
    \  Assign Multiple Environments to Phase with method PATCH  ${phasesList[${i}]}  ${envsList[${i}].id}  ${release.id}

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

Create Track With Milestones
#    [Arguments]  ${name}
    set test variable  ${sec_in_day}  86400
    ${on_your_marks_due_date}=  Evaluate  (${now} + 2 * ${sec_in_day}) * 1000
    ${get_set_due_date}=  Evaluate  (${now} + 4 * ${sec_in_day}) * 1000
    ${go_due_date}=  Evaluate  (${now} + 6 * ${sec_in_day}) * 1000
    ${milestones}=  Create Dictionary  MS1=${on_your_marks_due_date}
    ...                                MS2=${get_set_due_date}
#    ...                                MS3=${go_due_date}

    ${production_start_date}=  Evaluate  (${now} + 10 * ${sec_in_day}) * 1000
    ${production_end_date}=  Evaluate  (${now} + 12 * ${sec_in_day}) * 1000
    ${dto}=  Create a track with milestones  Track.${now}  Track - Description  ${production_start_date}  ${production_end_date}  ${milestones}  ok
    Set Suite Variable  ${the_track}  ${dto}
    Should Be Equal  ${the_track.name}  Track.${now}
    ${sorted_milestones}=  Sort Named Identifiables By Name  @{the_track.milestones}
    Set Suite Variable  ${MS1}  ${sorted_milestones[0]}
    Set Suite Variable  ${MS2}  ${sorted_milestones[1]}
#    Set Suite Variable  ${on_your_marks_milestone}  ${sorted_milestones[2]}


Duplicate Release with Same Name and New Version
    ${new_version}=  Catenate  SEPARATOR=.  ${release.version}  1
    ${dto_result}=  Duplicate a release by name and version  ${release.name}  ${new_version}  ${release.id}  ok
    set suite variable  ${dupRelease1}  ${dto_result}
    Then Should be true  ${dto_result.id}

Duplicate Release with Same Version and New Name
    ${new_name}=  Catenate  SEPARATOR=-  ${release.name}  Dup1
    ${dto_result}=  Duplicate a release by name and version  ${new_name}  ${release.version}  ${release.id}  ok
    set suite variable  ${dupRelease2}  ${dto_result}
    Then Should be true  ${dto_result.id}

Duplicate Release with New Version and New Name
    ${new_name}=  Catenate  SEPARATOR=-  ${release.name}  Dup2
    ${new_version}=  Catenate  SEPARATOR=.  ${release.version}  2
    ${dto_result}=  Duplicate a release by name and version  ${new_name}  ${new_version}  ${release.id}  ok
    set suite variable  ${dupRelease3}  ${dto_result}
    Then Should be true  ${dto_result.id}

create application version
    @{appsVersionList}=  create list
    :for  ${i}  IN RANGE  ${app_counter}
    \  ${appVersionDTO}=  Create application version by application id "${appsList[${i}].id}" release id "${release.id}" and version "v${i}.${now}"
    \  Append To List  ${appsVersionList}  ${appVersionDTO}
    set suite variable  @{appsVersionList}

set dependencies between applications versions on APP0 and APP1
    set test variable  ${status}  ok
    Set application version dependencies  ${release.id}  ${appsVersionList[1]}  ${status}  ${appsVersionList[0].id}
    ${dependedOnDTO}=  Private Get application version  ${appsVersionList[1].id}  ${release.id}  ok
    Should Be Equal  ${appsVersionList[0].id}  ${dependedOnDTO.dependsOn[0].id}

set dependencies between applications versions on APP2 and APP1
    set test variable  ${status}  ok
    Set application version dependencies  ${release.id}  ${appsVersionList[2]}  ${status}  ${appsVersionList[1].id}
    ${dependedOnDTO}=  Private Get application version  ${appsVersionList[1].id}  ${release.id}  ok
    Should Be Equal  ${appsVersionList[0].id}  ${dependedOnDTO.dependsOn[0].id}


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

add releases to track and verify phases mapped to MS
    @{releasesList}=  create list  ${release.id}  ${dupRelease1.id}  ${dupRelease2.id}  ${dupRelease3.id}
    set suite variable  @{releasesList}
    :for  ${releaseID}  IN  @{releasesList}
    \  ${phasesDTO}=  Get All Phases in Release by id "${releaseID}"
    \  ${milestones_assignments}=  Create Dictionary  ${MS1.id}=${phasesDTO[1].id}  ${MS2.id}=${phasesDTO[2].id}
    \  Assign release to track  ${the_track.id}  ${releaseID}  ${phasesDTO[0].id}  ${milestones_assignments}  ok
    \  ${the_release}=  Release by id "${releaseID}" exists
    \  Verify Phase Has Milestones  ${phasesDTO[1].id}  ${the_release.id}  ${MS1.id}
    \  Verify Phase Has Milestones  ${phasesDTO[2].id}  ${the_release.id}  ${MS2.id}
    \  ${productioPhaseDTO}=  Get phase by ID  ${phasesDTO[0].id}  ${releaseID}
    \  Verify Phase is Production  ${productioPhaseDTO}  ${the_track.productionStartDate}  ${the_track.productionEndDate}
    \  Verify No Conflicts  ${the_release}

Verfiy all Releass are Assigned To Track
    ${track}=  get track by id  ${the_track.id}
    ${releaseAmount}=  Get Length  ${releasesList}
    ${trackReleasesAmount}=  Get Length  ${track.releases}
    Should Be Equal  ${trackReleasesAmount}  ${releaseAmount}
    :for  ${i}  IN RANGE  ${releaseAmount}
    \  Should Be Equal  ${track.releases[${i}].id}  ${releasesList[${i}]}

Verify Phase Has Milestones
    [Arguments]  ${phase_id}  ${release_id}  @{expected_milestone_ids}
    ${phase}=  Get phase by ID  ${phase_id}  ${release_id}
    ${expected_milestone_count}=  Get Length  ${expected_milestone_ids}
    ${actual_milestone_count}=  Get Length  ${phase.milestonePhaseRelations}
    Should Be Equal As Integers  ${expected_milestone_count}  ${actual_milestone_count}
    :for  ${actual_milestone_releation}  in  @{phase.milestonePhaseRelations}
    \  ${actual_milestone}=  Set Variable  ${actual_milestone_releation.milestone}
    \  List Should Contain Value  ${expected_milestone_ids}  ${actual_milestone.id}

Verify No Conflicts
    [Arguments]  ${release}
    Should Be Empty  ${release.conflicts}

verify there is no conflicts
   ${conflictsDTO}=  Get application version conflicts by releaseId  ${release.id}  ok
   Should Be Empty  ${conflictsDTO.applicationVersionConflicts}
#   Should Be Equal As Integers   ${conflictsDTO.applicationVersion.id}  ${appsVersionList[1].id}
#   ${length}=  Get length  ${conflictsDTO.conflicts}
#   Should Be Equal As Integers  ${length}  3

verify there is conflicts
   ${conflictsDTO}=  get release conflicts  ${appsVersionList[2].id}  ${release.id}
   Should Be Equal As Integers   ${conflictsDTO.applicationVersion.id}  ${appsVersionList[2].id}
   ${length}=  Get length  ${conflictsDTO.conflicts}
   Should Be Equal As Integers  ${length}  3

validate Content Report
    :for  ${i}  IN RANGE  ${app_counter}
    \  ${appContent}=  Get content items by release id "${release.id}" and by application id "${appsList[${i}].id}" or free text ""
    \  Should Be Equal  ${appContent[0].id}  ${manualContent[${i}].id}
    \  Should Be Equal  ${appContent[0].content}  ${manualContent[${i}].content}
    \  Should Be Equal  ${appContent[0].contentSourceId}  ${manualContent[${i}].contentSourceId}

valdate Application Report
    :for  ${i}  IN RANGE  ${app_counter}
    \  ${appReport}=  Get Application Report By Id  ${appsList[${i}].id}
    \  ${phaseDTO}=  Get phase by ID  ${phasesList[${i}].id}  ${release.id}
    \  Run Keyword If  ${i} == 0  Should Be Equal  ${appReport.environmentVersions[0].application.id}  ${appsList[${i}].id}
    \  Run Keyword If  ${i} == 0  Should Be Equal  ${appReport.environmentVersions[0].environment.id}  ${envsList[${i}].id}
    \  Run Keyword If  ${i} == 0  Should Be Equal  ${appReport.environmentVersions[0].phase.id}  ${phasesList[${i}].id}
    \  Run Keyword If  ${i} == 0  Should Be Equal As Strings  ${appReport.environmentVersions[0].status}  ${phaseDTO.approvalGate}
    \  Run Keyword If  ${i} > 0   Should Be Empty  ${appReport.environmentVersions}

valdate Environment Report
    ${phaseDTO}=  Get phase by ID  ${phasesList[0].id}  ${release.id}
    :for  ${i}  IN RANGE  ${env_counter}
    \  ${envReport}=  Get Single Environment Report  ${envsList[${i}].id}  ok
    \  Run Keyword If  ${i} == 0  Should Be Equal  ${envReport.records[${i}].environment.id}  ${envsList[${i}].id}
    \  Run Keyword If  ${i} == 0  Should Be Equal  ${envReport.records[${i}].application.id}  ${appsList[0].id}
    \  Run Keyword If  ${i} == 0  Should Be Equal  ${envReport.records[${i}].release.id}  ${release.id}
    \  Run Keyword If  ${i} == 0  Should Be Equal  ${envReport.records[${i}].phase.id}  ${phaseDTO.id}
    \  Run Keyword If  ${i} == 0  Should Be Equal As Strings  ${envReport.records[${i}].status}  ${phaseDTO.approvalGate}
    \  Run Keyword If  ${i} > 0   Should Be Empty  ${envReport.records}

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
    Delete releases by ids  ok  @{releasesList}

delete tracks
    delete track  ${the_track.id}  ok
