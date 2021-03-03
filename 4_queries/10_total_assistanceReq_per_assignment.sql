SELECT assignments.id, assignments.name, assignments.day, COUNT(assistance_requests.*)
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY COUNT(assistance_requests.*) DESC;