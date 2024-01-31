*** Variables ***
${username_field}               xpath=//input[@name="username"]
${password_field}               xpath=//input[@name="password"]
${btn_login}                    xpath=//input[@name="login"]
${btn_caller_unit}              xpath=//button[@class="btn caller-btn text-uppercase fw-700 fs-14 d-block mx-auto mb-3"]
${btn_user}                     xpath=//*[@id="app"]/div/div/div[1]/button[1]
${btn_sign_out}                 xpath=//li[@class="caredokter-nav-sign-out"]
${btn_back}                     xpath=//*[@id="app"]/div/div/button
${nav_sessions}                 xpath=//li[@class=" caredokter-width-a"][2]
${btn_logout_session}           xpath=//button[@id="logout-all-sessions"]

${KEYCLOAK_SESSION_LEGACY}      KEYCLOAK_SESSION_LEGACY
${value_keycloak_session}       bo-puri/f361c6a9-f40a-4bbe-9bcd-b153320939de/7f4c35c5-fbeb-4e9e-86d5-2092980e63c7
${KEYCLOAK_IDENTITY_LEGACY}     KEYCLOAK_IDENTITY_LEGACY
${value_keycloak_identity}      eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5NDdlNzUyMy1kMjkyLTQ0OGQtODFkMS1hMjJjMGQ3YjdlZWIifQ.eyJleHAiOjE3MDU5MzQzMzUsImlhdCI6MTcwNTg5ODMzNSwianRpIjoiMWJhNmJjNzMtYzE2NS00NTQzLTkwMTEtZGMxYTc2YWRkMTY2IiwiaXNzIjoiaHR0cDovL2RhY2NvdW50LmNkLmxvY2FsL3JlYWxtcy9iby1wdXJpIiwic3ViIjoiZjM2MWM2YTktZjQwYS00YmJlLTliY2QtYjE1MzMyMDkzOWRlIiwidHlwIjoiU2VyaWFsaXplZC1JRCIsInNlc3Npb25fc3RhdGUiOiI3ZjRjMzVjNS1mYmViLTRlOWUtODZkNS0yMDkyOTgwZTYzYzciLCJzaWQiOiI3ZjRjMzVjNS1mYmViLTRlOWUtODZkNS0yMDkyOTgwZTYzYzciLCJzdGF0ZV9jaGVja2VyIjoiaFlFZDltMDMxbllTamRHT3dEc1BKbFhGdS00VnNUdlN3ZFpGcDktbm1RWSJ9.UzfuetqKFxU8iiAqb_LGBAlslWm7ARywz4DRMqN6fbE
${AUTH_SESSION_ID_LEGACY}       AUTH_SESSION_ID_LEGACY
${value_session_id}             7f4c35c5-fbeb-4e9e-86d5-2092980e63c7
