Deface::Override.new(virtual_path: 'spree/admin/option_types/_form',
                     name: 'add_default_short_title_to_option_type_1',
                     set_attributes: '[class="col-md-6"]',
                     attributes: {class: 'col-md-4'})

Deface::Override.new(virtual_path: 'spree/admin/option_types/_form',
                     name: 'add_default_short_title_to_option_type_2',
                     insert_bottom: '[data-hook="admin_option_type_form_fields"]',
                     partial: 'spree/backend/admin/option_types/default_short_title_field')