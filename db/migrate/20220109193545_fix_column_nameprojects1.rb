class FixColumnNameprojects1 < ActiveRecord::Migration[6.1]
  def change
    rename_column :projects, :Techstack, :techstack
  end
end
