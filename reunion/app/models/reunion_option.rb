class ReunionOption < ActiveRecord::Base
	# See the reunion option items in order of the item category
	default_scope :order => 'category'
	has_many :line_items
	has_many :orders, :through => :line_items
	validates :store_initial_quantity, :on_hand_quantity, :size, :color, :note, :presence => true
	validates :price, :s_and_h_cost, :sale_price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :option_item, :category, :uniqueness =>true
	validates :image_url, :format => {
    :with    => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
     } 
	
  def option_item_cost (price, s_and_h_cost)
      result = price + s_and_h_cost
      return result 
  end

 private

    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end


end
