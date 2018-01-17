class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :employer
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :description
      t.belongs_to :resume, foreign_key: true

      t.timestamps
    end
  end
end
