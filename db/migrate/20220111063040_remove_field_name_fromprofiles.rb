class RemoveFieldNameFromprofiles < ActiveRecord::Migration[6.1]
  def change
    remove_column :profiles, :access_token
  end
end
