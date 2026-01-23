## Estrutura do Grafo de Recomendação Musical

dio_me/Neoj4/RecomendacaoMusical/Musicas e Preferencias.png

## Comando Cypher para criação da estruura:

CREATE (User {id: "", name: "", email: ""})-[:LISTENED {`count: integer`: "", `last_listened: DateTime`: ""}]->(Track {id: "", title: "", duration_ms: ""})<-[:LIKES]-(User)-[:FOLLOWS]->(Artist {name: "", id: ""})<-[:PERFORMED_BY]-(Track)-[:IN_GENRE]->({id: "", name: ""})<-[:PLAYS_GENRE]-(Artist)

## Popular o banco com dados mockados

[text](popular_db.cypher) --> cypher

## Filtragem Colaborativa (Item-Item)

"Usuários que ouviram as mesmas músicas que você, também ouviram estas..."

[text](filtragem_similaridade.cypher) --> cypher

![alt text](image.png)

## Recomendação baseada em gêneros favoritos do usuário

"Músicas de gêneros que você mais ouve, mas ainda não conhece."

[text](recomendacao_por_genero.cypher) --> cypher

![alt text](image-2.png)

## Recomendação por afinidade com artistas que você

"Artistas seguidos por pessoas que curtem as mesmas músicas que você."

[text](recomendacao_por_artista.cypher)

![alt text](image-1.png)

## Descoberta de músicas por artistas similares

"Músicas de artistas que tocam os mesmos gêneros que seus artistas favoritos."

[text](descoberta_similaridade_artistas.cypher)

![alt text](image-3.png)