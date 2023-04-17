class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.references :user,       null: false, foreign_key: true
      t.references :address,    null: false, unique: true, foreign_key:true
      t.string :phone,          null: false
      t.string :email     
      t.string :name,           null:false
      t.integer :price_range,   null: false, default:1, min: 1 , max: 3
      t.boolean :active,        null: false, default: true

      t.timestamps              null: false 
    end

  end
end
