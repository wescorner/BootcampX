SELECT cohorts.name AS cohort, count(assignment_submissions.id) AS total_submissions
FROM cohorts
JOIN students
ON cohorts.id = students.cohort_id
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
GROUP BY cohort
ORDER BY total_submissions DESC;
