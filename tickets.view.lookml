- view: tickets
  sql_table_name: ZENDESK.TICKETS
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: assignee
    type: string
    sql: ${TABLE}.ASSIGNEE

  - dimension: assignee_id
    type: string
    sql: ${TABLE}.ASSIGNEE_ID

  - dimension: category
    type: string
    sql: ${TABLE}.CATEGORY

  - dimension: component
    type: string
    sql: ${TABLE}.COMPONENT

  - dimension: created_at
    type: string
    sql: ${TABLE}.CREATED_AT

  - dimension: customer
    type: string
    sql: ${TABLE}.CUSTOMER

  - dimension: description
    type: string
    sql: ${TABLE}.DESCRIPTION

  - dimension: due_at
    type: string
    sql: ${TABLE}.DUE_AT

  - dimension: external_id
    type: string
    sql: ${TABLE}.EXTERNAL_ID

  - dimension: forum_topic_id
    type: string
    sql: ${TABLE}.FORUM_TOPIC_ID

  - dimension: group
    type: string
    sql: ${TABLE}."GROUP"

  - dimension: group_id
    type: string
    # hidden: true
    sql: ${TABLE}.GROUP_ID

  - dimension: has_incidents
    type: yesno
    sql: ${TABLE}.HAS_INCIDENTS

  - dimension: kabana_position
    type: number
    sql: ${TABLE}.KABANA_POSITION

  - dimension: level
    type: string
    sql: ${TABLE}.LEVEL

  - dimension: organization_id
    type: string
    # hidden: true
    sql: ${TABLE}.ORGANIZATION_ID

  - dimension: origin
    type: string
    sql: ${TABLE}.ORIGIN

  - dimension: priority
    type: string
    sql: ${TABLE}.PRIORITY

  - dimension: problem_id
    type: string
    sql: ${TABLE}.PROBLEM_ID

  - dimension: recipient
    type: string
    sql: ${TABLE}.RECIPIENT

  - dimension: requester_id
    type: string
    sql: ${TABLE}.REQUESTER_ID

  - dimension: root_cause
    type: string
    sql: ${TABLE}.ROOT_CAUSE

  - dimension: severity
    type: string
    sql: ${TABLE}.SEVERITY

  - dimension: sql_sub_category
    type: string
    sql: ${TABLE}.SQL_SUB_CATEGORY

  - dimension: status
    type: string
    sql: ${TABLE}.STATUS

  - dimension: sub_status
    type: string
    sql: ${TABLE}.SUB_STATUS

  - dimension: subject
    type: string
    sql: ${TABLE}.SUBJECT

  - dimension: submitter_id
    type: string
    sql: ${TABLE}.SUBMITTER_ID

  - dimension: ticket_form_id
    type: string
    sql: ${TABLE}.TICKET_FORM_ID

  - dimension: time_spent_last_update_sec_
    type: string
    sql: ${TABLE}.TIME_SPENT_LAST_UPDATE_SEC_

  - dimension: total_time_spent_sec_
    type: string
    sql: ${TABLE}.TOTAL_TIME_SPENT_SEC_

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

  - dimension: updated_at
    type: string
    sql: ${TABLE}.UPDATED_AT

  - dimension: url
    type: string
    sql: ${TABLE}.URL

  - dimension: via_channel
    type: string
    sql: ${TABLE}.VIA_CHANNEL

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - organizations.id
    - organizations.name
    - groups.id
    - groups.name
    - satisfaction_ratings.count
    - tickets_sharing_agreements.count
    - ticket_comments.count
    - ticket_history.count
    - ticket_tag_history.count

