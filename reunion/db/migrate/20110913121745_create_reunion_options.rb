class CreateReunionOptions < ActiveRecord::Migration
  def self.up
    create_table :reunion_options do |t|
      t.string :option_item
      t.string :category
      t.decimal :price, :precision => 8, :scale =>2
      t.decimal :s_and_h_cost, :precision => 8, :scale =>2
      t.decimal :sale_price, :precision => 8, :scale =>2
      t.integer :store_initial_quantity
      t.integer :on_hand_quantity
      t.string :size
      t.string :color
      t.text :note
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :reunion_options
  end
end
