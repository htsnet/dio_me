With 13 as userId
MATCH (u:User {id: userId})-[:FOLLOWS]->(a:Artist)-[:PLAYS_GENRE]->(g:Genre)<-[:PLAYS_GENRE]-(similarArtist:Artist)
WHERE a <> similarArtist
MATCH (similarArtist)<-[:PERFORMED_BY]-(rec:Track)
WHERE NOT (u)-[:LISTENED]->(rec)
RETURN rec.title AS Recommendation, similarArtist.name AS Artist
LIMIT 10
