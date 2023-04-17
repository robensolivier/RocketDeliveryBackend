class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :user,         null: false, unique: true, foreign_key: true
      t.references :address,      null: false, foreign_key: true
      t.string :phone,           null: false
      t.string :email

      t.timestamps               null: false
    end

  end
end
