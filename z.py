import json

with open('floor.json') as f:
  data = json.load(f)

for d in data:
  print(d['product_url'])