"""
!pip install graphistry
!pip install neo4j
"""
from neo4j import GraphDatabase

# Initialize connection to the PuppyGraph.
uri = "bolt://localhost:7687"
username = "puppygraph"
password = "puppygraph123"
driver = GraphDatabase.driver(uri, auth=(username, password))
session = driver.session()
# Get all nodes from the graph.
query = """
MATCH (n:package) 
WHERE 
    SIZE((n)<-[:has_requirement]-()) > 100
    AND n.num_releases > 100
RETURN n
LIMIT 10
"""
nodes = session.run(query)
for record in nodes:
    node = record["n"]
    print({
        "id": node.element_id,
        "labels": list(node.labels),
        "properties": dict(node._properties)
    })
session.close()
