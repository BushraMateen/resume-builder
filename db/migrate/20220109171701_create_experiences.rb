class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :position
      t.date :startdate
      t.date :enddate
      t.string :description

      t.belongs_to :profile, index: { unique: true }, foreign_key: true


      t.timestamps
    end
  end
end
