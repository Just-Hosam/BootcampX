SELECT cohorts.name as cohort_name, count(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC;