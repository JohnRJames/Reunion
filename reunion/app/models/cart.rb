class Cart < ActiveRecord::Base
	has_many :line_items, :dependent => :destroy
	   
  def add_reunion_option(reunion_option_id)
    current_item = line_items.find_by_reunion_option_id(reunion_option_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(:reunion_option_id => reunion_option_id)
    end
    current_item
  end
  
  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
  
  
  def total_items
    line_items.sum(:quantity)
  end
end
