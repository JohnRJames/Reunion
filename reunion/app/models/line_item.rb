class LineItem < ActiveRecord::Base
    belongs_to  :order
    belongs_to  :reunion_option	
    belongs_to  :cart
    
    def total_price
    reunion_option.sale_price * quantity
  end
end
