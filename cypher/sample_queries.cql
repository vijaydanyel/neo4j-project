// Find all movies by an actor
MATCH (a:Actor {name:"Keanu Reeves"})-[:ACTED_IN]->(m:Movie)
RETURN a.name, m.title;

// Find directors who worked with Keanu Reeves
MATCH (a:Actor {name:"Keanu Reeves"})-[:ACTED_IN]->(m:Movie)<-[:DIRECTED]-(d:Director)
RETURN d.name, m.title;
