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
CALL db.labels()
"""
result = session.run(query)
for i, record in enumerate(result):
    label = record['label']
    count_result = session.run(f'''
    MATCH (n: {label})
    RETURN COUNT(n) AS cnt
    ''')
    for cnt in count_result:
        size = cnt['cnt']
    print(i, label.ljust(10), 'size=', size)


query = """
CALL db.relationshipTypes()
"""
result = session.run(query)
for i, record in enumerate(result):
    label = record['relationshipType']
    print(i, label.ljust(10))
session.close()
