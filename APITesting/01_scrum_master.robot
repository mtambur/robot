*** Settings ***
Documentation     Scrum master scenario
Force Tags    PROGRESSION  premonly  pluginsRequired
Variables     ${RESOURCES}/sut.py
Resource      ${LIBRARIES}/releases_rest_api.robot
Resource      ${LIBRARIES}/phases_rest_api.robot
Resource      ${LIBRARIES}/tasks_rest_api.robot
Resource      ${LIBRARIES}/applications_rest_api.robot
Resource      ${LIBRARIES}/users_rest_api.robot
Resource      ${LIBRARIES}/environments_rest_api.robot
Resource      ${LIBRARIES}/track_api.robot
Resource      ${LIBRARIES}/login_sessions_rest_api.robot
Resource      ${LIBRARIES}/application_versions_rest_api.robot
Resource      ${LIBRARIES}/content_rest_api.robot
Resource      ${LIBRARIES}/execution_rest_api.robot
Library  Dialogs
Library  Collections
Metadata      Author:tepli01
Test Timeout  10 minutes
Suite Setup  Custom suite setup
Suite Teardown  Custom suite Teardown

*** Variables ***
${RELEASE_NAME}=  Scrum Master Release
${TRACK_NAME}=  Scrum Master Track
${RELEASE_VERSION}=  Template
${DEV_PHASE_NAME}=  DEV Phase
${PROD_PHASE_NAME}=  PROD Phase
${UAT_PHASE_NAME}=  UAT Phase
${QA_PHASE_NAME}=  QA Phase
${bla}=  BLA
${MILESTONES_GAP}=  30


*** Keywords ***
Custom suite setup
    Local Application with 4 environments DEV QA UAT PROD
    Local User
    Login with Admin user


*** Test Cases ***
1 - Create a Track
    Create a track with production and 3 milestones

2 - Create a Release Template
    New Release
	Set Application version
	Create 2 Manual Content Items CR1 CR2
	Create 4 phases with owners

3 - Duplicate The Release Template
    Duplicate The Release Template
    Rename application version to 1.0
    Set Phase Time frames
    Change Phase Location
    Change Task Location
	Approval on a Phase
    Add release and phases to Track

4 - Execute Phases – With Scrum Master User
    Execute DEV Phase
    UAT Phase Starts to Run
    QA Phase Starts to Run
    Approve the production phase in the track
    Run and Set Done to all Tasks
	MARK AS DONE


*** Keywords ***
Local Application with 4 environments DEV QA UAT PROD
    Init Http Client  ${HOST}  ${PORT}  ${SCHEME}  ${USER}  ${PASSWORD}
    ${time1}=  Get Time  epoch
    set suite variable  ${time}  ${time1}
    Log To Console  Creating application
    ${dto_result}=  Create application by name "myApp ${time}" description "Application for Scrum master scenario"
    set suite variable  ${app_id}  ${dto_result.id}
    Log To Console  Creating environments
    ${dto_env}=  Create Environment by name "DEV ${time}" description "Dev environment for Scrum master scenario" under application with id "${app_id}"
    set suite variable  ${dev_env_id}  ${dto_env.id}
    ${dto_env}=  Create Environment by name "QA ${time}" description "Dev environment for Scrum master scenario" under application with id "${app_id}"
    set suite variable  ${qa_env_id}  ${dto_env.id}
    ${dto_env}=  Create Environment by name "UAT ${time}" description "Dev environment for Scrum master scenario" under application with id "${app_id}"
    set suite variable  ${uat_env_id}  ${dto_env.id}
    ${dto_env}=  Create Environment by name "PROD ${time}" description "Dev environment for Scrum master scenario" under application with id "${app_id}"
    set suite variable  ${prod_env_id}  ${dto_env.id}

Local User
    Designer Users (Environment Owners)
    Admin User

Designer Users (Environment Owners)
    Log To Console  Creating designer users
    ${dto_dev_user}=  Create a User by first name "DEV" last name "Owner" email "Dev_Owner_${time}@ca.com" password "${VALID_PASSWORD}"
    set suite variable  ${dev_user_id}  ${dto_dev_user.id}
    set suite variable  ${dev_user}  ${dto_dev_user}
    ${dto_qa_user}=  Create a User by first name "QA" last name "Owner" email "QA_Owner_${time}@ca.com" password "${VALID_PASSWORD}"
    set suite variable  ${qa_user_id}  ${dto_qa_user.id}
    set suite variable  ${qa_user}  ${dto_qa_user}
    ${dto_uat_user}=  Create a User by first name "UAT" last name "Owner" email "UAT_Owner_${time}@ca.com" password "${VALID_PASSWORD}"
    set suite variable  ${uat_user_id}  ${dto_uat_user.id}
    set suite variable  ${uat_user}  ${dto_uat_user}
    ${dto_prod_user}=  Create a User by first name "PROD" last name "Owner" email "PROD_Owner_${time}@ca.com" password "${VALID_PASSWORD}"
    set suite variable  ${prod_user_id}  ${dto_prod_user.id}
    set suite variable  ${prod_user}  ${dto_prod_user}

Admin User
    Log To Console  Creating admin user
    ${admin_user1}=  create a user with role "SYSTEM_ADMINISTRATOR" by first name "Scrum" last name "Master" email "Scrum_Master_${time}@ca.com" password "${VALID_PASSWORD}"
    set suite variable  ${admin_user}  ${admin_user1}
    set suite variable  ${admin_user_id}  ${admin_user.id}


Login with Admin user
    Log To Console  Logging in as Scrum Master
    Init Http Client By Name  ${HOST}  ${PORT}  ${SCHEME}  ${admin_user.email}  ${VALID_PASSWORD}  ${bla}
    Log in  ${admin_user.email}  ${VALID_PASSWORD}
    Set Current Client Name  ${bla}

create track with 3 milestones
    [Arguments]  ${name}
    ${on_your_marks_due_date}=  Evaluate  (${time} + ${MILESTONES_GAP}) * 1000
    ${get_set_due_date}=  Evaluate  (${time} + (1 + ${MILESTONES_GAP})) * 1000
    ${go_due_date}=  Evaluate  (${time} + (2 + ${MILESTONES_GAP})) * 1000
    ${milestones}=  Create Dictionary  m1=${on_your_marks_due_date}
    ...                                m2=${get_set_due_date}
    ...                                m3=${go_due_date}
    ${prdoction_start_date1}=  Evaluate  (${time} + (30 + ${MILESTONES_GAP})) * 1000
    ${prdoction_end_date1}=  Evaluate  (${time} + (60 + ${MILESTONES_GAP})) * 1000
    Set Suite Variable  ${prdoction_start_date}  ${prdoction_start_date1}
    Set Suite Variable  ${prdoction_end_date}  ${prdoction_end_date1}
    ${track}=  create a track with milestones  ${name}  track with milestone  ${prdoction_start_date}  ${prdoction_end_date}  ${milestones}  ok
    ${sorted_milestones}=  Sort Named Identifiables By Name  @{track.milestones}
    Set Suite Variable  ${ms1}  ${sorted_milestones[0]}
    Set Suite Variable  ${ms2}  ${sorted_milestones[1]}
    Set Suite Variable  ${ms3}  ${sorted_milestones[2]}
    [Return]  ${track}


Create a track with production and 3 milestones
    Log To Console  create track with 3 milestones
    ${track_dto}=  create track with 3 milestones  ${TRACK_NAME} ${time}
    set suite variable  ${track_id}  ${track_dto.id}


New Release
    Log To Console  Create a Release Template
    ${temp_release_dto}=  Create a release with owner and member by name "${RELEASE_NAME} ${time}" description "scrum master release" version "${RELEASE_VERSION}" users ID "${admin_user_id}" members ID "${prod_user_id}
    set suite variable  ${temp_release_id}  ${temp_release_dto.id}
    Log To Console  Assign application to release
    Assign Single Application "${app_id}" to Release "${temp_release_id}"



Set Application version
    Log To Console  Create application version
    ${app_version_dto1}=  Create application version by application id "${app_id}" release id "${temp_release_id}" and version "${RELEASE_VERSION}"
    set suite variable  ${app_ver_id}  ${app_version_dto1.id}
    set suite variable  ${app_version_dto}  ${app_version_dto1}


Create 2 Manual Content Items CR1 CR2
    Log To Console  Get manual content source
    ${content_source}=  Get From List  ${app_version_dto.contentSources}  0

    Log To Console  Create manual content for application version
    ${manual_content1_dto}=  Create a manual content for content source id "${content_source.id}" with application version id "${app_ver_id}" with release id "${temp_release_id}" and content "CR1"
    ${manual_content2_dto}=  Create a manual content for content source id "${content_source.id}" with application version id "${app_ver_id}" with release id "${temp_release_id}" and content "CR2"


Create 4 phases with owners
    Create Dev phase
    Create Phase Tasks (manual tasks, Current Env owner per task)

	Duplicate DEV Phase into - QA Phase
    Edit DEV Phase Tasks

	Duplicate QA Phase into - UAT Phase
	Edit QA Phase Tasks

	Duplicate UAT Phase into - PROD Phase
	Edit UAT Phase Tasks


Create Dev phase
    Log To Console  Create Dev phase
    ${dev_phase_dto}=  Create phase by name "${DEV_PHASE_NAME}" description "${DEV_PHASE_NAME}" at release "${temp_release_id}" with enviorment id "${dev_env_id}" with application id "${app_id}"
    set suite variable  ${dev_phase_id}  ${dev_phase_dto.id}
    Log To Console  Update Dev Phase Owner
    @{owners_ids}=  Create List  ${dev_user_id}
    Update phase with multiple owners  ${dev_phase_dto}  @{owners_ids}


Create Phase Tasks (manual tasks, Current Env owner per task)
    Create a task "Build"
    Create a task "Verifications"
    Create a task "Deploy Content to Environment"


Create a task "Build"
    ${build_task_dto1}=  create a task called "Build" on phase "${dev_phase_id}" and release "${temp_release_id}"
    set suite variable  ${build_task_dto}  ${build_task_dto1}
    set suite variable  ${build_task_id}  ${build_task_dto1.id}


Create a task "Verifications"
    ${verifications_task_dto1}=  create a task called "Verifications" on phase "${dev_phase_id}" and release "${temp_release_id}"
    set suite variable  ${verifications_task_dto}  ${verifications_task_dto1}
    set suite variable  ${verifications_task_id}  ${verifications_task_dto1.id}


Create a task "Deploy Content to Environment"
    ${task_dto1}=  create a new task "Deploy Content to Environment" with owner "${dev_user_id}" after 2 parallel tasks "${build_task_id}" and "${verifications_task_id}" on phase "${dev_phase_id}" and release "${temp_release_id}"
    set suite variable  ${deploy_task_dto}  ${task_dto1}
    set suite variable  ${deploy_task_id}  ${task_dto1.id}


Duplicate DEV Phase into - QA Phase
    ${dst_phase_name}=  Set Variable  ${QA_PHASE_NAME}
    ${dst_release_id}=  Set Variable  ${temp_release_id}
    ${dst_prev_phase_id}=  Set Variable  ${dev_phase_id}
    ${src_phase_id}=  Set Variable  ${dev_phase_id}
    ${qa_phase_dto1}=  Duplicate phase into same release  ${src_phase_id}  ${dst_phase_name}  ${dst_release_id}  ${dst_prev_phase_id}
    set suite variable  ${qa_phase_id}  ${qa_phase_dto1.id}
    set suite variable  ${qa_phase_dto}  ${qa_phase_dto1}
    Set phase owner and environment  ${temp_release_id}  ${qa_phase_id}  ${qa_user_id}  ${qa_env_id}


Edit DEV Phase Tasks
    ${new_task_name}=  Set Variable  Testing
    Rename first task into  ${new_task_name}  ${qa_phase_dto.tasks[0].id}  ${temp_release_id}  ${qa_phase_id}
    Change owners to "${qa_user_id}" in all tasks "@{qa_phase_dto.tasks}" of release "${temp_release_id}" and phase "${qa_phase_id}"


Duplicate QA Phase into - UAT Phase
    ${dst_phase_name}=  Set Variable  ${UAT_PHASE_NAME}
    ${dst_release_id}=  Set Variable  ${temp_release_id}
    ${dst_prev_phase_id}=  Set Variable  ${qa_phase_id}
    ${src_phase_id}=  Set Variable  ${qa_phase_id}
    ${uat_phase_dto1}=  Duplicate phase into same release  ${src_phase_id}  ${dst_phase_name}  ${dst_release_id}  ${dst_prev_phase_id}
    set suite variable  ${uat_phase_id}  ${uat_phase_dto1.id}
    set suite variable  ${uat_phase_dto}  ${uat_phase_dto1}
    Set phase owner and environment  ${temp_release_id}  ${uat_phase_id}  ${uat_user_id}  ${uat_env_id}


Edit QA Phase Tasks
    ${new_task_name}=  Set Variable  AB
    Rename first task into  ${new_task_name}  ${uat_phase_dto.tasks[0].id}  ${temp_release_id}  ${uat_phase_id}
    Change owners to "${uat_user_id}" in all tasks "@{uat_phase_dto.tasks}" of release "${temp_release_id}" and phase "${uat_phase_id}"


Duplicate UAT Phase into - PROD Phase
    ${dst_phase_name}=  Set Variable  ${PROD_PHASE_NAME}
    ${dst_release_id}=  Set Variable  ${temp_release_id}
    ${dst_prev_phase_id}=  Set Variable  ${uat_phase_id}
    ${src_phase_id}=  Set Variable  ${uat_phase_id}
    ${prod_phase_dto1}=  Duplicate phase into same release  ${src_phase_id}  ${dst_phase_name}  ${dst_release_id}  ${dst_prev_phase_id}
    set suite variable  ${prod_phase_id}  ${prod_phase_dto1.id}
    set suite variable  ${prod_phase_dto}  ${prod_phase_dto1}
    Set phase owner and environment  ${temp_release_id}  ${prod_phase_id}  ${prod_user_id}  ${prod_env_id}


Edit UAT Phase Tasks
    ${new_task_name}=  Set Variable  Production
    Rename first task into  ${new_task_name}  ${prod_phase_dto.tasks[0].id}  ${temp_release_id}  ${prod_phase_id}
    Change owners to "${prod_user_id}" in all tasks "@{prod_phase_dto.tasks}" of release "${temp_release_id}" and phase "${prod_phase_id}"


Duplicate The Release Template
    ${new_release_dto}=  Duplicate a release by name and version  e2e1 ${time}  1.0  ${temp_release_id}  ok
    set suite variable  ${new_release_id}  ${new_release_dto.id}


Rename application version to 1.0
    Update application version with release id "${new_release_id}" and version id "${app_ver_id}" and version "2.0" and application id "${app_id}"


Set Phase Time frames
    Set DEV phase time frame for tommorrow with 1 day duration
    Set PROD phase time frame for next week with 1 day duration
    Change PROD phase gate to scheduled

Set DEV phase time frame for tommorrow with 1 day duration
    ${new_dev_phase_id1}=  Set phase "${DEV_PHASE_NAME}" time frame for "1" days from now with 1 day duration
    set suite variable  ${new_dev_phase_id}  ${new_dev_phase_id1}


Set PROD phase time frame for next week with 1 day duration
    Set phase "${PROD_PHASE_NAME}" time frame for "7" days from now with 1 day duration


Change PROD phase gate to scheduled
    ${new_prod_phase}=  Update phase approval gate by name  ${PROD_PHASE_NAME}  ${new_release_id}  SCHEDULED
    set suite variable  ${new_prod_phase_id}  ${new_prod_phase.id}


Change Phase Location
    Change UAT Phase Location to be between DEV and QA

Change UAT Phase Location to be between DEV and QA
    ${new_uat_phase_dto}=  Get phase by name within release  ${UAT_PHASE_NAME}  ${new_release_id}
    set suite variable  ${new_uat_phase_id}  ${new_uat_phase_dto.id}
    ${new_qa_phase_dto}=  Get phase by name within release  ${QA_PHASE_NAME}  ${new_release_id}
    set suite variable  ${new_qa_phase_id}  ${new_qa_phase_dto.id}
    private Update phase Position to middle  ${new_release_id}  ${new_uat_phase_id}  ${new_dev_phase_id}  ${new_qa_phase_id}


Change Task Location
    In QA Phase drag Verifications to Run after Testing (and not parallel)

In QA Phase drag Verifications to Run after Testing (and not parallel)
    @{all_new_dev_phase_tasks}=  Get All Tasks at phase "${new_qa_phase_id}" at release "${new_release_id}"
    ${qa_task_id}=  Set Variable  ${all_new_dev_phase_tasks[1].id}
    ${prev_tasks_ids}=  Create List  ${all_new_dev_phase_tasks[0].id}
    ${next_tasks_ids}=  Create List  ${all_new_dev_phase_tasks[2].id}
    Patch task with transitions  ${qa_task_id}  ${new_qa_phase_id}  ${new_release_id}  ${prev_tasks_ids}  ${next_tasks_ids}  ok


Approval on a Phase
    Request Approval For PROD Phase
    Approve PROD Phase


Request Approval For PROD Phase
    Request Phase Approval  ${new_release_id}  ${new_prod_phase_id}  true


Approve PROD Phase
    Approve Phase  ${new_release_id}  ${new_prod_phase_id}


Add release and phases to Track
    ${milestones_assignments}=  Create Dictionary  ${ms1.id}=${new_dev_phase_id}
    ...                                            ${ms2.id}=${new_uat_phase_id}
    ...                                            ${ms3.id}=${new_qa_phase_id}
    Assign release to track  ${track_id}  ${new_release_id}  ${new_prod_phase_id}  ${milestones_assignments}  ok


Execute DEV Phase
    Run Dev Tasks
    Set DEV Tasks as Done


Run Dev Tasks
        Private Execute a phase  ${new_dev_phase_id}  ${new_release_id}


Set DEV Tasks as Done
    @{all_new_dev_phase_tasks}=  Get All Tasks at phase "${new_dev_phase_id}" at release "${new_release_id}"
    :for  ${task}  in  @{all_new_dev_phase_tasks}
    \  Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${task.id}" of phase "${new_dev_phase_id}" of release "${new_release_id}" is in status "PENDING"
    \  Update task-execution of task "${task.id}" of phase "${new_dev_phase_id}" of release "${new_release_id}" with status "DONE"
    \  Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${task.id}" of phase "${new_dev_phase_id}" of release "${new_release_id}" is in status "DONE"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify phase-execution of phase "${new_dev_phase_id}" of release "${new_release_id}" is in status "DONE"



UAT Phase Starts to Run
    Execute UAT Phase
    Skip AB Testing Task and Set Done to rest of the tasks


Execute UAT Phase
    Private Execute a phase  ${new_uat_phase_id}  ${new_release_id}


Skip AB Testing Task and Set Done to rest of the tasks
    @{all_new_uat_phase_tasks}=  Get All Tasks at phase "${new_uat_phase_id}" at release "${new_release_id}"

    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_uat_phase_tasks[0].id}" of phase "${new_uat_phase_id}" of release "${new_release_id}" is in status "PENDING"
    Update task status by id "${all_new_uat_phase_tasks[0].id}" at phase "${new_uat_phase_id}" at release "${new_release_id}" with status "SKIPPED"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_uat_phase_tasks[0].id}" of phase "${new_uat_phase_id}" of release "${new_release_id}" is in status "SKIPPED"

    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_uat_phase_tasks[1].id}" of phase "${new_uat_phase_id}" of release "${new_release_id}" is in status "PENDING"
    Update task status by id "${all_new_uat_phase_tasks[1].id}" at phase "${new_uat_phase_id}" at release "${new_release_id}" with status "DONE"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_uat_phase_tasks[1].id}" of phase "${new_uat_phase_id}" of release "${new_release_id}" is in status "DONE"

    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_uat_phase_tasks[2].id}" of phase "${new_uat_phase_id}" of release "${new_release_id}" is in status "PENDING"
    Update task status by id "${all_new_uat_phase_tasks[2].id}" at phase "${new_uat_phase_id}" at release "${new_release_id}" with status "DONE"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_uat_phase_tasks[2].id}" of phase "${new_uat_phase_id}" of release "${new_release_id}" is in status "DONE"

    Wait Until Keyword Succeeds  10 sec  1 sec  verify phase-execution of phase "${new_uat_phase_id}" of release "${new_release_id}" is in status "DONE"


QA Phase Starts to Run
    Execute QA Phase
    Skip Testing Task and Set Done to rest of the tasks


Execute QA Phase
    Private Execute a phase  ${new_qa_phase_id}  ${new_release_id}


Skip Testing Task and Set Done to rest of the tasks
    @{all_new_qa_phase_tasks}=  Get All Tasks at phase "${new_qa_phase_id}" at release "${new_release_id}"

    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_qa_phase_tasks[0].id}" of phase "${new_qa_phase_id}" of release "${new_release_id}" is in status "PENDING"
    Update task status by id "${all_new_qa_phase_tasks[0].id}" at phase "${new_qa_phase_id}" at release "${new_release_id}" with status "SKIPPED"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_qa_phase_tasks[0].id}" of phase "${new_qa_phase_id}" of release "${new_release_id}" is in status "SKIPPED"

    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_qa_phase_tasks[1].id}" of phase "${new_qa_phase_id}" of release "${new_release_id}" is in status "PENDING"
    Update task status by id "${all_new_qa_phase_tasks[1].id}" at phase "${new_qa_phase_id}" at release "${new_release_id}" with status "DONE"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_qa_phase_tasks[1].id}" of phase "${new_qa_phase_id}" of release "${new_release_id}" is in status "DONE"

    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_qa_phase_tasks[2].id}" of phase "${new_qa_phase_id}" of release "${new_release_id}" is in status "PENDING"
    Update task status by id "${all_new_qa_phase_tasks[2].id}" at phase "${new_qa_phase_id}" at release "${new_release_id}" with status "DONE"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${all_new_qa_phase_tasks[2].id}" of phase "${new_qa_phase_id}" of release "${new_release_id}" is in status "DONE"

    Wait Until Keyword Succeeds  10 sec  1 sec  verify phase-execution of phase "${new_qa_phase_id}" of release "${new_release_id}" is in status "DONE"


Run and Set Done to all Tasks
    Set PROD Tasks as Done

Approve the production phase in the track
    Wait Until Keyword Succeeds  60 sec  1 sec  Approve release in track  ${track_id}  ${new_release_id}  ok


Set PROD Tasks as Done
    Wait Until Keyword Succeeds  60 sec  10 sec  verify phase-execution of phase "${new_prod_phase_id}" of release "${new_release_id}" is in status "RUNNING"
    @{all_new_prod_phase_tasks}=  Get All Tasks at phase "${new_prod_phase_id}" at release "${new_release_id}"
    :for  ${task}  in  @{all_new_prod_phase_tasks}
    \   Log To Console  updating status of task ${task.name} to DONE
    \  Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${task.id}" of phase "${new_prod_phase_id}" of release "${new_release_id}" is in status "PENDING"
    \  Update task-execution of task "${task.id}" of phase "${new_prod_phase_id}" of release "${new_release_id}" with status "DONE"
    \  Wait Until Keyword Succeeds  10 sec  1 sec  verify task-execution "${task.id}" of phase "${new_prod_phase_id}" of release "${new_release_id}" is in status "DONE"
    Wait Until Keyword Succeeds  10 sec  1 sec  verify phase-execution of phase "${new_prod_phase_id}" of release "${new_release_id}" is in status "DONE"


MARK AS DONE
    Wait Until Keyword Succeeds  30 sec  5 sec  private Mark release as done  ${new_release_id}
    Reset Current Client Name


private update task with owner
    [Arguments]  ${task_id}  ${phase_id}  ${release_id}  ${owners_ids}
    ${url}=  Set Variable  ${RELEASES_URL}/${release_id}/phases/${phase_id}/tasks/${task_id}
    ${response_json}=  Execute Rest Patch Operation  ${url}  {"ownerParties": [{"id":"${owners_ids}"}]}  ok
    ${response_dto}=  Parse Single Data JSON  com.ca.rp.dtos.interfaces.TaskDto  ${response_json}
    [Return]  ${response_dto}


create a task "${task_name}" with owner "${user_id}" and application version "${app_ver_id}" on phase "${phase_id}" and release "${release_id}"
    Log To Console  Create a task "Build"
    ${task_dto}=  Create a task by name "${task_name}" description "${task_name}" at phase "${phase_id}" at release "${release_id}"
    Log To Console  Task: ${task_dto.name} (${task_dto.id}) was created.
    Log To Console  Update Task Owner
    ${task_dto}=  private update task with owner  ${task_dto.id}  ${phase_id}  ${release_id}  ${user_id}
    [return]  ${task_dto}


create a task called "${name}" on phase "${phase_id}" and release "${release_id}"
    ${task_dto}=  create a task "${name}" with owner "${dev_user_id}" and application version "${app_ver_id}" on phase "${phase_id}" and release "${release_id}"
    Log To Console  Task: ${task_dto.name} (${task_dto.id}) was created.
    [return]  ${task_dto}


create a new task "${name}" with owner "${user_id}" after 2 parallel tasks "${task1_id}" and "${task2_id}" on phase "${phase_id}" and release "${release_id}"
    ${prev_tasks_ids}=  Create List  ${task1_id}  ${task2_id}
    ${next_tasks_ids}=  Create List
    ${task_dto}=  Create task with transitions  ${name}  ${phase_id}  ${release_id}  ${prev_tasks_ids}  ${next_tasks_ids}  ok
    Log To Console  Task: ${task_dto.name} (${task_dto.id}) was created.
    Log To Console  Assign application version to task
    ${task_dto}=  Assign Application Versions to Task  ${task_dto}  ${release_id}  ${app_ver_id}
    Log To Console  Update Task Owner
    ${task_dto}=  private update task with owner  ${task_dto.id}  ${phase_id}  ${release_id}  ${user_id}
    [Return]  ${task_dto}


Set phase owner and environment
    [Arguments]  ${release_id}  ${phase_id}  ${owner_id}  ${env_id}
    ${json_body}=  Set Variable  {"ownerParties": [{"id":"${owner_id}"}],"environments": [{"id":"${env_id}"}]}
    Patch phase  ${release_id}  ${phase_id}  ${json_body}


Rename first task into
    [Arguments]  ${new_task_name}  ${task_id}  ${release_id}  ${phase_id}
    ${url}=  Set Variable  ${RELEASES_URL}/${release_id}/phases/${phase_id}/tasks/${task_id}
    ${response_json}=  Execute Rest Patch Operation  ${url}  {"name": "${new_task_name}"}  ok


Change owners to "${owner_id}" in all tasks "${tasks}" of release "${release_id}" and phase "${phase_id}"
    :for  ${task}  in  @{tasks}
        \   ${task_dto}=  private update task with owner  ${task.id}  ${phase_id}  ${release_id}  ${owner_id}


Set phase "${phase_name}" time frame for "${amount}" days from now with 1 day duration
    ${new_dev_phase_dto}=  Get phase by name within release  ${phase_name}  ${new_release_id}
    ${startDate_time}=  Set Variable  ${prdoction_start_date}
    ${endDate_time}=  Set Variable  ${prdoction_end_date}
    ${phase_json}=  Set variable  {"plannedStartDate":"${startDate_time}","plannedEndDate":"${endDate_time}"}
    ${dev_phase_dto}=  Patch phase  ${new_release_id}  ${new_dev_phase_dto.id}  ${phase_json}
    [Return]  ${new_dev_phase_dto.id}

Update phase approval gate by name
    [Arguments]  ${phase_name}  ${release_id}  ${approval_gate}
    ${phase_dto}=  Get phase by name within release  ${phase_name}  ${release_id}
    ${url}=  Set Variable  ${RELEASES_URL}/${release_id}/phases/${phase_dto.id}
    ${response_json}=  Execute Rest Patch Operation  ${url}  {"approvalGate": "${approval_gate}"}  ok
    ${response_dto}=  Parse Single Data JSON  com.ca.rp.dtos.interfaces.PhaseDto  ${response_json}
    [Return]  ${response_dto}

private Update phase Position to middle
    [Documentation]  Make a Phase location transition, must provide next and prev phase id's
    [Arguments]  ${release_id}  ${phase_id}  ${dst_previous_phase_id}  ${dst_next_phase_id}
    ${url}=  Set Variable  ${RELEASES_URL}/${release_id}/phases/${phase_id}/transitions
    ${response_json}=  Execute Rest Patch Operation  ${url}  {"id":"${phase_id}","previousPhase":{"id":"${dst_previous_phase_id}"},"nextPhase":{"id":"${dst_next_phase_id}"}}  ok
    ${response_dto}=  Parse Single Data JSON  com.ca.rp.dtos.interfaces.PhaseDto  ${response_json}
    [Return]  ${response_dto}


Private Execute a phase
    [Arguments]  ${phase_id}  ${release_id}
    ${phase_execution}=  Update phase-execution of phase "${phase_id}" of release "${release_id}" with status "RUNNING"

private Mark release as done
    [Arguments]  ${release_id}
    Update release-execution of release "${release_id}" with status "DONE" with force "true"


Custom suite Teardown
    Log To Console  Delete application ${app_id}
    Run Keyword If All Tests Passed  Delete application by id "${app_id}"
    Log To Console  Delete all design users
    Run Keyword If All Tests Passed  Delete a user by id "${dev_user_id}"
    Run Keyword If All Tests Passed  Delete a user by id "${qa_user_id}"
    Run Keyword If All Tests Passed  Delete a user by id "${uat_user_id}"
    Run Keyword If All Tests Passed  Delete a user by id "${prod_user_id}"
    Log To Console  Delete all releases
    Run Keyword If All Tests Passed  Delete a release by id "${temp_release_id}"
    Run Keyword If All Tests Passed  Delete a release by id "${new_release_id}"
    Log To Console  Delete the track ${track_id}
    Run Keyword If All Tests Passed  delete track  ${track_id}  ok
    Log To Console  Delete admin user
    Run Keyword If All Tests Passed  Delete a user by id "${admin_user_id}"
