MATCH (u:User {id: $userId})-[:LISTENED]->(t:Track)<-[:LISTENED]-(other:User)
MATCH (other)-[:LISTENED]->(rec:Track)
WHERE NOT (u)-[:LISTENED]->(rec)
RETURN rec.title AS Recommendation, count(*) AS Score
ORDER BY Score DESC
LIMIT 10