MATCH (u:User {id: $userId})-[:LIKES]->(t:Track)<-[:LIKES]-(other:User)
MATCH (other)-[:FOLLOWS]->(artist:Artist)
WHERE NOT (u)-[:FOLLOWS]->(artist)
RETURN artist.name AS ArtistRecommendation, count(*) AS Strength
ORDER BY Strength DESC
LIMIT 5