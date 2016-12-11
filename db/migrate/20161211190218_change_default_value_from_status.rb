class ChangeDefaultValueFromStatus < ActiveRecord::Migration[5.0]
  def change
    change_column_default :data_files, :status, 0
  end
end
