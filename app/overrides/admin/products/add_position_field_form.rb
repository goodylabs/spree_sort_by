Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :insert_after => "[data-hook='admin_product_form_additional_fields']",
                     :name          => "position_form",
                     :partial =>  "spree/admin/products/position_form"  )