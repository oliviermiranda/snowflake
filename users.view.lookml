- view: users
  sql_table_name: ZENDESK.USERS
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: account_owner
    type: yesno
    sql: ${TABLE}.ACCOUNT_OWNER

  - dimension: active
    type: yesno
    sql: ${TABLE}.ACTIVE

  - dimension: alias
    type: string
    sql: ${TABLE}.ALIAS

  - dimension: created_at
    type: string
    sql: ${TABLE}.CREATED_AT

  - dimension: custom_role_id
    type: string
    sql: ${TABLE}.CUSTOM_ROLE_ID

  - dimension: details
    type: string
    sql: ${TABLE}.DETAILS

  - dimension: email
    type: string
    sql: ${TABLE}.EMAIL

  - dimension: external_id
    type: string
    sql: ${TABLE}.EXTERNAL_ID

  - dimension: first_name
    type: string
    sql: ${TABLE}.FIRST_NAME

  - dimension: last_login_at
    type: string
    sql: ${TABLE}.LAST_LOGIN_AT

  - dimension: lastname
    type: string
    sql: ${TABLE}.LASTNAME

  - dimension: locale_id
    type: string
    sql: ${TABLE}.LOCALE_ID

  - dimension: mobile
    type: string
    sql: ${TABLE}.MOBILE

  - dimension: moderator
    type: yesno
    sql: ${TABLE}.MODERATOR

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: notes
    type: string
    sql: ${TABLE}.NOTES

  - dimension: only_private_comments
    type: yesno
    sql: ${TABLE}.ONLY_PRIVATE_COMMENTS

  - dimension: organization_id
    type: string
    # hidden: true
    sql: ${TABLE}.ORGANIZATION_ID

  - dimension: phone
    type: string
    sql: ${TABLE}.PHONE

  - dimension: remote_photo_url
    type: string
    sql: ${TABLE}.REMOTE_PHOTO_URL

  - dimension: role
    type: string
    sql: ${TABLE}.ROLE

  - dimension: shared
    type: yesno
    sql: ${TABLE}.SHARED

  - dimension: signature
    type: string
    sql: ${TABLE}.SIGNATURE

  - dimension: suspended
    type: yesno
    sql: ${TABLE}.SUSPENDED

  - dimension: ticket_restriction
    type: string
    sql: ${TABLE}.TICKET_RESTRICTION

  - dimension: time_zone
    type: string
    sql: ${TABLE}.TIME_ZONE

  - dimension: title
    type: string
    sql: ${TABLE}.TITLE

  - dimension: updated_at
    type: string
    sql: ${TABLE}.UPDATED_AT

  - dimension: url
    type: string
    sql: ${TABLE}.URL

  - dimension: verified
    type: yesno
    sql: ${TABLE}.VERIFIED

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - lastname
    - first_name
    - organizations.id
    - organizations.name
    - group_memberships.count

