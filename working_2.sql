SELECT 
    s.state_name AS STATE,
    MAX(p.quiz_points) AS MAXPOINTS,
    AVG(p.quiz_points) AS AVGPOINTS
    
FROM 
    states s
JOIN 
    people p ON s.state_abbrev = p.state_code
GROUP BY 
    s.state_name
ORDER BY
    AVGPOINTS DESC;