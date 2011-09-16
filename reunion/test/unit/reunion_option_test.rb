require 'test_helper'

class ReunionOptionTest < ActiveSupport::TestCase
  fixtures :reunion_options
  test "reunion option atributes must not be empty" do
    reunion_option = ReunionOption.new
    assert reunion_option.invalid?
    assert reunion_option.errors[:option_item].any?
    assert reunion_option.errors[:category].any?
    assert reunion_option.errors[:price].any?
    assert reunion_option.errors[:s_and_h_cost].any?
    assert reunion_option.errors[:sale_price].any?
    assert reunion_option.errors[:store_initial_quantity].any?
    assert reunion_option.errors[:on_hand_quantity].any?
    assert reunion_option.errors[:size].any?
    assert reunion_option.errors[:color].any?
    assert reunion_option.errors[:note].any?
    assert reunion_option.errors[:image_url].any?
  end
  
  test "reunion option price must be positive" do
    reunion_option = ReunionOption.new(:option_item  	=> "My reunion option",
      				       :category	=> "My category!",
      				       :price		=>  31.77,
      				       :s_and_h_cost	=>  0.01,
     				       :sale_price	=>  31.78,
      				:store_initial_quantity	=>  20,
      				:on_hand_quantity	=>  20,
    				:size			=>  "S M L XL XXL",
     				:color			=>  "blue",
     				:note			=>  "The item is fun!",
    				:image_url		=>  "item.jpg")
                           
    reunion_option.price = -1
    assert reunion_option.invalid?
    assert_equal "must be greater than or equal to 0.01", 
      reunion_option.errors[:price].join('; ')

    reunion_option.price = 0
    assert reunion_option.invalid?
    assert_equal "must be greater than or equal to 0.01", 
      reunion_option.errors[:price].join('; ')

    reunion_option.price = 1
    assert reunion_option.valid?
  end
  
   def new_reunion_option(image_url)
      ReunionOption.new(:option_item  			=> "My reunion option",
      					:category				=>	"My category!",
      					:price					=>	31.77,
      					:s_and_h_cost			=>	0.01,
     					:sale_price				=>	31.78,
      					:store_initial_quantity	=>	20,
      					:on_hand_quantity		=>	20,
    					:size					=>	"S M L XL XXL",
     					:color					=>	"blue",
     					:note					=>	"The item is fun!",
              		  	:image_url  		 	=> image_url)
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
             http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    
    ok.each do |name|
      assert new_reunion_option(name).valid?, "#{name} shouldn't be invalid"
    end

    bad.each do |name|
      assert new_reunion_option(name).invalid?, "#{name} shouldn't be valid"
    end
  end

  test "reunion option is not valid without a unique option_item value" do
  	reunion_option = ReunionOption.new(:option_item  		=> reunion_options(:ruby).option_item,
      								:category				=>	"My category!",
      								:price					=>	31.77,
      								:s_and_h_cost			=>	0.01,
     							 	:sale_price				=>	31.78,
      								:store_initial_quantity	=>	20,
      								:on_hand_quantity		=>	20,
    								:size					=>	"S M L XL XXL",
     								:color					=>	"blue",
     								:note					=>	"The item is fun!",
    							  	:image_url				=>	"fred.gif")
    assert !reunion_option.save
    assert_equal "has already been taken", reunion_option.errors[:option_item].join('; ')
  end

  test "Reunion option is not valid without a unique option_item value - i18n" do
   reunion_option = ReunionOption.new(:option_item  		=> reunion_options(:ruby).option_item,
      								:category				=>	"My category!",
      								:price					=>	31.77,
      								:s_and_h_cost			=>	0.01,
     							 	:sale_price				=>	31.78,
      								:store_initial_quantity	=>	20,
      								:on_hand_quantity		=>	20,
    								:size					=>	"S M L XL XXL",
     								:color					=>	"blue",
     								:note					=>	"The item is fun!",
    							  	:image_url				=>	"fred.gif")

   assert !reunion_option.save
    assert_equal I18n.translate('activerecord.errors.messages.taken'),
                 reunion_option.errors[:option_item].join('; ')
  end
  
end

