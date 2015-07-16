Deface::Override.new(virtual_path: 'spree/admin/variants/_form',
                     name: 'add_show_price_to_variant',
                     insert_after: '[data-hook="price"]',
                     partial: 'spree/backend/admin/variants/show_price_field')

Deface::Override.new(virtual_path: 'spree/admin/variants/_form',
                     name: 'add_short_title_to_variant',
                     insert_top: '[data-hook="variants"]',
                     partial: 'spree/backend/admin/variants/short_title_field')