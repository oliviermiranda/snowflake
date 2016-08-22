- connection: fivetran

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: ticket_comments
  joins: 
      - join: tickets
        foreign_key: ticket_id
        
        

        
      
      
