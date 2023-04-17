class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :restaurant,       null: false, foreign_key: true
      t.references :customer,         null: false, foreign_key: true
      t.references :order_status,     null: false, foreign_key: true
      t.integer :restaurant_rating,   min: 1, max: 5
      t.references :courier,          foreign_key:true

      t.timestamps                    null: false
    end

    
  end
end
