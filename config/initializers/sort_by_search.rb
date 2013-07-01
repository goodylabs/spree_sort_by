Spree::Config.searcher_class.class_eval do
  alias :old_prepare_sort :prepare
  def prepare(params)
    old_prepare_sort(params)
    @properties[:sort_by] = params[:sort_by]
  end

  def retrieve_products
    @products_scope = get_base_scope
    @products_scope = add_additional_scope(@products_scope)
    curr_page = page || 1

    @products = @products_scope.includes([:master => :prices])
    unless Spree::Config.show_products_without_price
      @products = @products.where("spree_prices.amount IS NOT NULL").where("spree_prices.currency" => current_currency)
    end
    @products = @products.page(curr_page).per(per_page)
  end

  begin
    alias :add_additional_scope_sort :add_additional_scope
  rescue
  end

  def add_additional_scope(scope)
    scope = add_additional_scope_sort(scope) if self.respond_to?(:add_additional_scope_sort)
    scope = scope.order(Rails.application.config.sort_params[sort_by])
    scope
  end

end
