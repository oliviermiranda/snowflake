- view: ticket_history
  sql_table_name: ZENDESK.TICKET_HISTORY
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: new_value
    type: string
    sql: ${TABLE}.NEW_VALUE

  - dimension: property
    type: string
    sql: ${TABLE}.PROPERTY

  - dimension: ticket_id
    type: string
    # hidden: true
    sql: ${TABLE}.TICKET_ID

  - dimension: timestamp
    type: string
    sql: ${TABLE}.TIMESTAMP

  - dimension: updater_id
    type: string
    sql: ${TABLE}.UPDATER_ID

  - dimension: via
    type: string
    sql: ${TABLE}.VIA

  - measure: count
    type: count
    drill_fields: [id, tickets.id]

