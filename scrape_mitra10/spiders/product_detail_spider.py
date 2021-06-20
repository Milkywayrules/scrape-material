import scrapy
import re
import pymysql

class ProductDetailSpider(scrapy.Spider):
    # connect to MySQL
    conn = pymysql.connect(host='localhost', user='root', passwd='', db='db_nguli')
    cursor = conn.cursor()

    cursor.execute("SELECT product_url, image FROM url")
    db_obj = cursor.fetchall()

    # close MySQL conn
    conn.commit()
    conn.close()

    name = "product_detail"
    start_urls = [x[0] for x in db_obj]
    image_urls = {product_url:image for product_url, image in db_obj}

    def parse(self, response):
        ###
        # 
        # product_name
        # brand_name
        # product url
        # image
        # normal_price
        # special_price
        # product_info
        # additional_info
        # 
        ###

        def validate_price(price):
            if price is None:
                return None
            else:
                return re.sub('\D', '', price)

        def validate_int(val):
            if val != None:
                if type(val) is str:
                    return int(val)
                else:
                    return val

        # Nama produk
        product_name = response.css('h1.page-title span.base::text').get()
        product_name = " ".join(product_name.split())

        # Nama brand
        brand_name = response.xpath("//td[@data-th='Merek']/text()").get()
        brand_name = " ".join(brand_name.split())

        # URL halaman produk
        product_url = response.url

        # URL gambar
        image = self.image_urls[product_url]

        # Harga normal
        normal_price = response.css('span.old-price span.price-container span.price-wrapper span.price::text').get()
        normal_price = validate_price(normal_price)

        # Harga diskon
        special_price = response.css('span.special-price span.price-container span.price-wrapper span.price::text').get()
        special_price = validate_price(special_price)

        # Info produk
        product_info = response.css('div#description div.description div.value').get()

        # Info tambahan
        sales_uom = response.xpath("//td[@data-th='SALES UOM']/text()").get() # UoM = Unit of Measure

        package_dimension = response.xpath("//td[@data-th='Package Dimension']/text()").get()
        package_l, package_w, package_h = list(map(int, package_dimension.replace('cm', '').split(' X ')))

        product_dimension = response.xpath("//td[@data-th='Product Dimension']/text()").get()
        product_l, product_w, product_h = list(map(int, product_dimension.replace('cm', '').split(' X ')))

        product_weight = response.xpath("//td[@data-th='PRODUCT WEIGHT']/text()").get()
        product_weight = int(product_weight.replace('kg', ''))

        yield {
            'product_name': product_name,
            'brand_name': brand_name,
            'product_url': product_url,
            'image': image,
            'normal_price': validate_int(normal_price),
            'special_price': validate_int(special_price),
            # Info tambahan
            'product_info': product_info,
            'sales_uom': sales_uom,
            #
            'package_l': package_l,
            'package_w': package_w,
            'package_h': package_h,
            #
            'product_l': product_l,
            'product_w': product_w,
            'product_h': product_h,
            #
            'product_weight': product_weight,
        }
