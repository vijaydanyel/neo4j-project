```cypher
CREATE (m:Movie {title:"The Matrix", year:1999})
CREATE (a:Actor {name:"Keanu Reeves"})
CREATE (d:Director {name:"Lana Wachowski"})
CREATE (a)-[:ACTED_IN]->(m)
CREATE (d)-[:DIRECTED]->(m);
