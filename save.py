import pymysql, os, json
from datetime import datetime

# read JSON file which is in the next parent folder
with open('product_detail.json') as f:
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
cursor.execute("TRUNCATE product")

# parse json data to SQL insert
for i, item in enumerate(json_obj):
    product_name = validate_string(item.get("product_name", None))
    brand_name = validate_string(item.get("brand_name", None))
    image = validate_string(item.get("image", None))
    product_url = validate_string(item.get("product_url", None))
    normal_price = item.get("normal_price", None)
    special_price = item.get("special_price", None)
    # Info tambahan
    product_info = validate_string(item.get("product_info", None))
    sales_uom = validate_string(item.get("sales_uom", None))
    #
    package_l = item.get("package_l", None)
    package_w = item.get("package_w", None)
    package_h = item.get("package_h", None)
    #
    product_l = item.get("product_l", None)
    product_w = item.get("product_w", None)
    product_h = item.get("product_h", None)
    #
    product_weight = item.get("product_weight", None)

    created_at = datetime.now()

    cursor.execute("INSERT INTO product (product_name, brand_name, image, product_url, normal_price, special_price, product_info, sales_uom, package_l, package_w, package_h, product_l, product_w, product_h, product_weight, created_at) VALUES (%s, %s,	%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (product_name, brand_name, image, product_url, normal_price, special_price, product_info, sales_uom, package_l, package_w, package_h, product_l, product_w, product_h, product_weight, created_at))

conn.commit()
conn.close()
