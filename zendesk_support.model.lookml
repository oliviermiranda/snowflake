- connection: fivetran

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: tickets
  joins: 
      - join: ticket_comments
        foreign_key: id
      
      
- view: fitbit_active_tickets
  derived_table:
    sql: |
      select a.customer, a.id, a.created_at, a.status, a.description, 
      b.created_at as comment_date, b.BODY from zendesk.tickets a, ZENDESK.TICKET_COMMENTS b
      where a.customer = 'FITBIT'
      and b.ticket_id = a.id
      and b.PUBLIC_COMMENT = true
      and a.status != 'closed'
      and a.status != 'solved'

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: customer
    type: string
    sql: ${TABLE}.CUSTOMER

  - dimension: id
    type: string
    sql: ${TABLE}.ID

  - dimension: created_at
    type: string
    sql: ${TABLE}.CREATED_AT

  - dimension: status
    type: string
    sql: ${TABLE}.STATUS

  - dimension: description
    type: string
    sql: ${TABLE}.DESCRIPTION

  - dimension: comment_date
    type: string
    sql: ${TABLE}.COMMENT_DATE

  - dimension: body
    type: string
    sql: ${TABLE}.BODY

  sets:
    detail:
      - customer
      - id
      - created_at
      - status
      - description
      - comment_date
      - body
