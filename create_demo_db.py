import os
import duckdb
if os.path.exists('demo.db'):
    os.remove('demo.db')
conn = duckdb.connect('demo.db')
conn.execute(open('create_table.sql', 'r').read())
conn.commit()

table = conn.execute('show all tables;').fetchdf()
print(table)
