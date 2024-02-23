SELECT states.region, people.team, Count(people.team)
FROM states
JOIN people ON states.state_abbrev=people.state_code
GROUP BY states.region, people.team;