class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title 
      t.string :projectURL
      t.string :Techstack
      t.string :Description

      t.belongs_to :experiences, index: { unique: true }, foreign_key: true


      t.timestamps
    end
  end
end
