class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :experiences, :Description, :description
  end
end
