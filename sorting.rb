[1, 33, 44, 2, 44, 13].sort 

# Bubble Sort 


SELECT projects.title, (SUM(pledges.amount) - projects.funding_goal) AS amount_left FROM projects JOIN pledges 
   ON projects.id = pledges.project_id GROUP BY projects.title HAVING amount_left >= 0
   
SELECT projects.title, (SUM(pledges.amount) - projects.funding_goal) 
  AS amount 
  FROM projects 
  JOIN pledges 
  ON projects.id = pledges.project_id 
  GROUP BY projects.title 
  HAVING amount >= 0;