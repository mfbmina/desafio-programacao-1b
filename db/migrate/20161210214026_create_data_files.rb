class CreateDataFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :data_files do |t|
      t.string :file
      t.integer :status
      
      t.timestamps
    end
  end
end
