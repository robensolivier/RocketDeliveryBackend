class CreateProductOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :product_orders do |t|
      t.references :product,        null: false, foreign_key: true
      t.references :order,          null: false, foreign_key: true
      t.integer :product_quantity,   null: false, min: 1
      t.integer :product_unit_cost, null: false, min: 0, max: 5
      
      t.timestamps                  null: false
      t.index ["order_id", "product_id"], unique: true
    end
 
  end
end
