- view: organizations
  sql_table_name: ZENDESK.ORGANIZATIONS
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: account_type
    type: string
    sql: ${TABLE}.ACCOUNT_TYPE

  - dimension: address
    type: string
    sql: ${TABLE}.ADDRESS

  - dimension: city
    type: string
    sql: ${TABLE}.CITY

  - dimension: created_at
    type: string
    sql: ${TABLE}.CREATED_AT

  - dimension: details
    type: string
    sql: ${TABLE}.DETAILS

  - dimension: external_id
    type: string
    sql: ${TABLE}.EXTERNAL_ID

  - dimension: group_id
    type: string
    # hidden: true
    sql: ${TABLE}.GROUP_ID

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: notes
    type: string
    sql: ${TABLE}.NOTES

  - dimension: phone
    type: string
    sql: ${TABLE}.PHONE

  - dimension: shared_comments
    type: yesno
    sql: ${TABLE}.SHARED_COMMENTS

  - dimension: shared_tickets
    type: yesno
    sql: ${TABLE}.SHARED_TICKETS

  - dimension: snowflake_account
    type: string
    sql: ${TABLE}.SNOWFLAKE_ACCOUNT

  - dimension: snowflake_account_owner
    type: string
    sql: ${TABLE}.SNOWFLAKE_ACCOUNT_OWNER

  - dimension: state
    type: string
    sql: ${TABLE}.STATE

  - dimension: support_plan
    type: string
    sql: ${TABLE}.SUPPORT_PLAN

  - dimension: updated_at
    type: string
    sql: ${TABLE}.UPDATED_AT

  - dimension: website
    type: string
    sql: ${TABLE}.WEBSITE

  - dimension: zip
    type: string
    sql: ${TABLE}.ZIP

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - groups.id
    - groups.name
    - tickets.count
    - users.count

