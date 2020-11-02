module Spree::ProductDecorator
  def self.prepended(base)
    def base.find_by_array_of_ids(ids)
      where(id: ids).first(4)
    end
  end
end

Spree::Product.prepend Spree::ProductDecorator
