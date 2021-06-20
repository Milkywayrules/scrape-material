import pymysql, os, json
from datetime import datetime

# read JSON file which is in the next parent folder
with open('floor_url.json') as f:
  json_obj = json.load(f)

# do validation and checks before insert
def validate_string(val):
   if val != None:
        if type(val) is int:
            return str(val).encode('utf-8')
        else:
            return val


# connect to MySQL
conn = pymysql.connect(host='localhost', user='root', passwd='', db='db_nguli')
cursor = conn.cursor()

# Clear the table first
cursor.execute("TRUNCATE url")

# parse json data to SQL insert
for i, item in enumerate(json_obj):
    product_url = validate_string(item.get("product_url", None))
    image = validate_string(item.get("image", None))

    created_at = datetime.now()

    cursor.execute("INSERT INTO url (product_url, image, created_at) VALUES (%s, %s, %s)", (product_url, image, created_at))

conn.commit()
conn.close()
