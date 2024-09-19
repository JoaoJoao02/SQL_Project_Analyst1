SELECT 
    COUNT(job_id),
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    location_category


SELECT 
    COUNT(job_id),
    job_schedule_type
FROM
    job_postings_fact
WHERE  
    job_title_short = 'Data Analyst'
GROUP BY   
    job_schedule_type