module Spree
  module RecentlyViewedProductsHelper
    def cached_recently_viewed_products_ids
      (cookies['recently_viewed_products'] || '').split(', ')
    end

    def cached_recently_viewed_products
      Spree::Product.find_by_array_of_ids(cached_recently_viewed_products_ids).first(4)
    end
  end
end
