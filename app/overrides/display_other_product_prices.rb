Deface::Override.new(virtual_path: 'spree/shared/_products',
                     name: 'display_other_product_prices',
                     replace_contents: '[itemprop="offers"]',
                     text: '<%= display_other_prices(product) %>')