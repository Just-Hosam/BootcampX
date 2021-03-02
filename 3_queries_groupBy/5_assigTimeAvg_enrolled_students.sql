SELECT students.name as student, SUM(assignment_submissions.duration)/COUNT(assignment_submissions.*) as assignment_avg_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY assignment_avg_duration DESC;