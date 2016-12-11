class CreateInputs < ActiveRecord::Migration[5.0]
  def change
    create_table :inputs do |t|
      t.string :buyer
      t.string :description
      t.decimal :unitary_price, precision: 9, scale: 2
      t.integer :amount
      t.string :address
      t.string :provider
      t.references :data_file
      t.timestamps
    end
  end
end
