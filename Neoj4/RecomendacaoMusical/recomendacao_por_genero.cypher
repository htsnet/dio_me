MATCH (u:User {id: $userId})-[:LISTENED]->(t:Track)-[:IN_GENRE]->(g:Genre)
WITH u, g, count(*) AS genreCount
ORDER BY genreCount DESC
LIMIT 3
MATCH (rec:Track)-[:IN_GENRE]->(g)
WHERE NOT (u)-[:LISTENED]->(rec)
RETURN rec.title AS Recommendation, g.name AS Genre
ORDER BY rand()
LIMIT 10