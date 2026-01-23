## Estrutura do Grafo de Recomendação Musical

dio_me/Neoj4/RecomendacaoMusical/Musicas e Preferencias.png

## Comando Cypher para criação da estruura:

CREATE (User {id: "", name: "", email: ""})-[:LISTENED {`count: integer`: "", `last_listened: DateTime`: ""}]->(Track {id: "", title: "", duration_ms: ""})<-[:LIKES]-(User)-[:FOLLOWS]->(Artist {name: "", id: ""})<-[:PERFORMED_BY]-(Track)-[:IN_GENRE]->({id: "", name: ""})<-[:PLAYS_GENRE]-(Artist)

## Popular o banco com dados mockados

[text](popular_db.cypher)

## Filtragem Colaborativa (Item-Item)

"Usuários que ouviram as mesmas músicas que você, também ouviram estas..."

[text](filtragem_similaridade.cypher)