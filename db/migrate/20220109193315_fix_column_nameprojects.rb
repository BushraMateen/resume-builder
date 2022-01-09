class FixColumnNameprojects < ActiveRecord::Migration[6.1]
  def change
    rename_column :projects, :Description, :description
  end
end
