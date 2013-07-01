Deface::Override.new(:virtual_path  => "spree/taxons/show",
                     :insert_before => "[data-hook='taxon_products']",
                     :name          => "sort_by",
                     :partial =>  "spree/taxons/sort_by"  )

Deface::Override.new(:virtual_path  => "spree/home/index",
                     :insert_before => "[data-hook='homepage_products']",
                     :name          => "sort_by",
                     :partial =>  "spree/taxons/sort_by"  )