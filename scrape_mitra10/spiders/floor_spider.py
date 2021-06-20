import scrapy
import re

class FloorSpider(scrapy.Spider):
    name = "floor_url"
    start_urls = [
        f'https://www.mitra10.com/flooring-and-wall.html?p={x}&product_list_dir=desc&product_list_order=bestseller' 
        for x in range(1, 3)
        ]

    def parse(self, response):
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

        for quote in response.css('li.product-item'):
            # URL gambar
            image = quote.css('img.product-image-photo::attr(src)').get()

            # URL halaman produk
            product_url = quote.css('div.actions-primary a.action::attr(href)').get()

            # Harga normal
            normal_price = quote.css('span.old-price span.price-container span.price-wrapper span.price::text').get()
            normal_price = validate_price(normal_price)

            # Harga diskon
            special_price = quote.css('span.special-price span.price-container span.price-wrapper span.price::text').get()
            special_price = validate_price(special_price)

            if normal_price is None or special_price is None:
                continue

            yield {
                'image': image,
                'product_url': product_url,
                'normal_price': validate_int(normal_price),
                'special_price': validate_int(special_price),
            }