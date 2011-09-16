# This file contains the data needed to seed the reunion database with reunion option items:
#
#
#   First delete all database entries for ReunionOption items:

ReunionOption.delete_all


#  Next create the default entries for the reunion option items
# . . . first item

ReunionOption.create (:option_item => 'Meal Plan A',
  :category => '1-Reg',
  :price => '350.00',
  :s_and_h_cost => '.00',
  :sale_price => '350.00',
  :store_initial_quantity  => '1',
  :on_hand_quantity => '1',
  :size  => 'N/A',
  :color => 'N/A',
  :note  =>  
       %{<p> 
          Meal Plan A includes meals from Thursday Dinner
          through Sunday Brunch
          <p>},
  :image_url  => '/images/Crest1967_small.jpg')

# . . .  next item


ReunionOption.create (:option_item => 'Meal Plan B',
  :category => '1-Reg',
  :price => '230.00',
  :s_and_h_cost => '.00',
  :sale_price => '230.00',
  :store_initial_quantity  => '1',
  :on_hand_quantity => '1',
  :size  => 'N/A',
  :color => 'N/A',
  :note  =>  
       %{<p> 
          Meal Plan B includes meals from Friday Dinner
          through Sunday Brunch
          <p>},
  :image_url  => '/images/Crest1967_small.jpg')

# . . .  next item


ReunionOption.create (:option_item => 'Panama Hat',
  :category => '1-Reg',
  :price => '.01',
  :s_and_h_cost => '.01',
  :sale_price => '.02',
  :store_initial_quantity  => '200',
  :on_hand_quantity => '200',
  :size  => 'S, M, L, XL',
  :color => 'N/A',
  :note  =>  
       %{<p> 
          Separate Band with USMA 67
          S:6 7/8 - 7; M:7 - 7 1/8; 
          L:7 1/4 - 7 3/8; XL: 7 1/2- 7 5/8
          <p>},
  :image_url  => '/images/PanamaHat_small.jpg')

# . . .  next item

ReunionOption.create (:option_item => 'Wind Shirt w/Crest',
  :category => '1-Reg',
  :price => '.01',
  :s_and_h_cost => '.01',
  :sale_price => '.02',
  :store_initial_quantity  => '200',
  :on_hand_quantity => '200',
  :size  => 'S, M, L, XL, XXL',
  :color => 'N/A',
  :note  =>  
       %{<p> 
          suede, micro fiber
          <p>},
  :image_url  => '/images/WindShirtWithCrest_small.jpg')
  
  # . . .  next item

ReunionOption.create (:option_item => 'Suitcase Handles',
  :category => '2-Store',
  :price => '7.00',
  :s_and_h_cost => '.01',
  :sale_price => '7.01',
  :store_initial_quantity  => '75',
  :on_hand_quantity => '75',
  :size  => 'N/A',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
         set of 2 handles with USMA 67 creat
          <p>},
  :image_url  => '/images/Crest1967_small.jpg')


  
  # . . .  next item

ReunionOption.create (:option_item => 'Class Crest Pin',
  :category => '2-Store',
  :price => '3.00',
  :s_and_h_cost => '.01',
  :sale_price => '3.01',
  :store_initial_quantity  => '300',
  :on_hand_quantity => '300',
  :size  => 'N/A',
  :color => 'N/A',
  :note  =>  
       %{<p> 
         class crest pin
          <p>},
  :image_url  => '/images/Crest1967_small.jpg')


  # . . .  next item

ReunionOption.create (:option_item => 'Sport/Rec Seat',
  :category => '2-Store',
  :price => '36.00',
  :s_and_h_cost => '.01',
  :sale_price => '36.01',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'N/A',
  :color => 'Black',
  :note  =>  
       %{<p> 
        Black with USMA 67 crest
          <p>},
  :image_url  => '/images/OutdoorRecreationSeat_small.jpg')


# . . .  next item

ReunionOption.create (:option_item => 'Beach Towel w Crest',
  :category => '2-Store',
  :price => '20.00',
  :s_and_h_cost => '.01',
  :sale_price => '20.01',
  :store_initial_quantity  => '200',
  :on_hand_quantity => '200',
  :size  => 'N/A',
  :color =>  'Multiple colors',
  :note  =>  
       %{<p> 
         Multiple colors
          <p>},
  :image_url  => '/images/Crest1967_small.jpg')
  
  # . . .  next item
  
ReunionOption.create (:option_item => 'Tattoo 67  1 inch square',
  :category => '2-Store',
  :price => '0.99',
  :s_and_h_cost => '.01',
  :sale_price => '1.00',
  :store_initial_quantity  => '500',
  :on_hand_quantity => '500',
  :size  => 'N/A',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
         Three for $1.00. Lasts 10-15 days, remove w baby oil
          <p>},
  :image_url  => '/images/Crest1967_small.jpg')

  # . . .  next item
  
ReunionOption.create (:option_item => 'V-neck Pull Over',
  :category => '2-Store',
  :price => '44.99',
  :s_and_h_cost => '.01',
  :sale_price => '45.00',
  :store_initial_quantity  => '24',
  :on_hand_quantity => '24',
  :size  => 'S to XXL',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
         Multiple colors
          <p>},
  :image_url  => '/images/V_neckPullover_small.jpg')


  # . . .  next item
  
ReunionOption.create (:option_item => '1/4 Zip wind shirt',
  :category => '2-Store',
  :price => '51.99',
  :s_and_h_cost => '.01',
  :sale_price => '52.00',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'S to XXL',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
         collar
          <p>},
  :image_url  => '/images/ZipperWindShirt_small.jpg')


  # . . .  next item
  
ReunionOption.create (:option_item => 'Long Sleeve twill shirt w Crest',
  :category => '2-Store',
  :price => '34.99',
  :s_and_h_cost => '.01',
  :sale_price => '35.00',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'S to XXL',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
         Multiple colors
          <p>},
  :image_url  => '/images/Crest1967_small.jpg')

  # . . .  next item
  
ReunionOption.create (:option_item => 'SS twill shirt w Crest',
  :category => '2-Store',
  :price => '29.99',
  :s_and_h_cost => '.01',
  :sale_price => '30.00',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'S to XXL',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
         Multiple colors
          <p>},
  :image_url  => '/images/ShortSleeveTwill_small.jpg')
  
   # . . .  next item
  
ReunionOption.create (:option_item => 'LS chino shirt wCrest',
  :category => '2-Store',
  :price => '34.99',
  :s_and_h_cost => '.01',
  :sale_price => '35.00',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'S to XXL',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
         Multiple colors
          <p>},
  :image_url  => '/images/LongSleeveChino_small.jpg')
  
  
   # . . .  next item
  
ReunionOption.create (:option_item => 'LS Denim w crest',
  :category => '2-Store',
  :price => '44.99',
  :s_and_h_cost => '.01',
  :sale_price => '45.00',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'S to XXL',
  :color =>  'light blue',
  :note  =>  
       %{<p> 
         Light blue long sleeve denim shirt with crest
          <p>},
  :image_url  => '/images/LongSleeveDenim_small.jpg')
    
  
   # . . .  next item
  
ReunionOption.create (:option_item => 'Polo shirts w crest',
  :category => '2-Store',
  :price => '27.99',
  :s_and_h_cost => '.01',
  :sale_price => '28.00',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'S to XXL',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
         white, black, gold
          <p>},
  :image_url  => '/images/LongSleeveDenim_small.jpg')
  
    
  
   # . . .  next item
  
ReunionOption.create (:option_item => 'Baseball Cap(s)',
  :category => '2-Store',
  :price => '19.99',
  :s_and_h_cost => '.01',
  :sale_price => '20.00',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'varies',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       three styles; w Crest or USMA  67 
          <p>},
  :image_url  => '/images/Crest1967_small.jpg')
  
  
   # . . .  next item
  
ReunionOption.create (:option_item => 'Silk Tie',
  :category => '2-Store',
  :price => '34.99',
  :s_and_h_cost => '.01',
  :sale_price => '35.00',
  :store_initial_quantity  => '24',
  :on_hand_quantity => '24',
  :size  => 'N/A',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       Custom with USMA 67
          <p>},
  :image_url  => '/images/Crest1967_small.jpg')
  
  
   # . . .  next item
  
ReunionOption.create (:option_item => 'Field Coat ',
  :category => '2-Store',
  :price => '148.99',
  :s_and_h_cost => '.01',
  :sale_price => '149.00',
  :store_initial_quantity  => '20',
  :on_hand_quantity => '20',
  :size  => 'S to XXL',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       Water Resistant, NorthEast HD cotton w Crest, T sizes add $10.00
          <p>},
  :image_url  => '/images/FieldCoat_small.jpg')
   
   # . . .  next item
  
ReunionOption.create (:option_item => 'Field Coat - T Sizes ',
  :category => '2-Store',
  :price => '158.99',
  :s_and_h_cost => '.01',
  :sale_price => '159.00',
  :store_initial_quantity  => '20',
  :on_hand_quantity => '20',
  :size  => 'LT to XXLT',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       Water Resistant, NorthEast HD cotton w Crest, T sizes add $10.00
          <p>},
  :image_url  => '/images/FieldCoat_small.jpg')

   # . . .  next item
  
ReunionOption.create (:option_item => 'Black Wind Breaker',
  :category => '2-Store',
  :price => '.01',
  :s_and_h_cost => '.01',
  :sale_price => '.02',
  :store_initial_quantity  => '1',
  :on_hand_quantity => '1',
  :size  => 'S to XXL',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       Full Zipper with Crest, (if available)
          <p>},
  :image_url  => '/images/BlackWindBreakerWithCrest_small.jpg') 
  
   # . . .  next item
  
ReunionOption.create (:option_item => 'Nike Golf Bag',
  :category => '2-Store',
  :price => '189.99',
  :s_and_h_cost => '.01',
  :sale_price => '190.00',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'N/A',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       Embroidered with USMA Crest
          <p>},
  :image_url  => '/images/GolfBag_small.jpg') 

   # . . .  next item
  
ReunionOption.create (:option_item => 'Apron',
  :category => '2-Store',
  :price => '.01',
  :s_and_h_cost => '.01',
  :sale_price => '.02',
  :store_initial_quantity  => '12',
  :on_hand_quantity => '12',
  :size  => 'one size',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       With USMA Crest?
          <p>},
  :image_url  => '/images/Crest1967_small.jpg') 
  
  
   # . . .  next item
  
ReunionOption.create (:option_item => '1/4 ZIP LS Sweat Shirt, Crest',
  :category => '3-Child',
  :price => '.01',
  :s_and_h_cost => '.01',
  :sale_price => '.02',
  :store_initial_quantity  => '1',
  :on_hand_quantity => '1',
  :size  => 'TBD',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       Still awaiting list and samples
          <p>},
  :image_url  => '/images/Crest1967_small.jpg') 


   # . . .  next item
  
ReunionOption.create (:option_item => 'Onesie',
  :category => '3-Child',
  :price => '.01',
  :s_and_h_cost => '.01',
  :sale_price => '.02',
  :store_initial_quantity  => '1',
  :on_hand_quantity => '1',
  :size  => 'TBD',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       Still awaiting list and samples
          <p>},
  :image_url  => '/images/Crest1967_small.jpg') 


   # . . .  next item
  
ReunionOption.create (:option_item => 'tee shirt',
  :category => '3-Child',
  :price => '.01',
  :s_and_h_cost => '.01',
  :sale_price => '.02',
  :store_initial_quantity  => '1',
  :on_hand_quantity => '1',
  :size  => 'TBD',
  :color =>  'N/A',
  :note  =>  
       %{<p> 
       Still awaiting list and samples
          <p>},
  :image_url  => '/images/Crest1967_small.jpg') 
   
