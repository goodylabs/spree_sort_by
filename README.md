SpreeSortBy
===========

Add this line to your application.rb file

```ruby
   #Hash that maps url param to model attributes for search
    config.sort_params = {"relevance" => "spree_products.sort_position ASC", "relevance_desc" => "spree_products.sort_position DESC", "price" => "spree_prices.amount ASC","price_desc" => "spree_prices.amount DESC", "name" => "spree_products.name", "name_desc" => "spree_products.name DESC" }

```


Installation
------------

Add spree_sort_by to your Gemfile:

```ruby
gem 'spree_sort_by'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_sort_by:install
```

Copyright (c) 2013 [name of extension creator], released under the New BSD License
