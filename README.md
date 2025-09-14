# Neo4j Movie Knowledge Graph

This project demonstrates a simple knowledge graph using Neo4j.  
It uses a small **movie dataset** to create nodes (Movies, Actors, Directors) and relationships between them.

---

## Project Overview
- Import sample movie data into Neo4j
- Create nodes and relationships
- Run Cypher queries to explore connections

---

## Use Case
This project is an example of how graph databases can represent real-world domains like movies, actors, and directors, making it easier to analyze relationships.

---

## Tech Stack
- Neo4j Aura Free
- Cypher Query Language

---

## Example Queries
```cypher
// Create sample nodes
CREATE (m:Movie {title:"The Matrix", year:1999})
CREATE (a:Actor {name:"Keanu Reeves"})
CREATE (d:Director {name:"Lana Wachowski"})

// Create relationships
CREATE (a)-[:ACTED_IN]->(m)
CREATE (d)-[:DIRECTED]->(m);

// Query movies by actor
MATCH (a:Actor {name:"Keanu Reeves"})-[:ACTED_IN]->(m:Movie)
RETURN a.name, m.title;
```
***
---
## Neo4j Aura Instance Details

- Instance Name: Instance01

- Database ID: 726ac3fe

- Database: neo4j (Cypher 5)

- Nodes: Actor, Director, Movie

- Relationships: ACTED_IN, DIRECTED

## Graph Example Created:

- Movie: The Matrix (1999)

- Actor: Keanu Reeves

- Director: Lana Wachowski
