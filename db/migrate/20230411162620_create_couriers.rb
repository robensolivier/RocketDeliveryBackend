class CreateCouriers < ActiveRecord::Migration[7.0]
  def change
    create_table :couriers do |t|
      t.integer :user_id,             null: false, unique: true
      t.integer :address_id,          null: false
      t.integer :courier_status_id,   null: false, default: 1
      t.string :phone,                null: false
      t.string :email
      t.boolean :active,              null: false, default: true

      t.timestamps                    null: false
    end
    add_foreign_key :orders, :order_statuses, column: :order_status_id, primary_key: "id"
  end
end
