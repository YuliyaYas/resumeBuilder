class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :location
      t.string :degree
      t.string :major
      t.integer :year
      t.belongs_to :resume, foreign_key: true

      t.timestamps
    end
  end
end
