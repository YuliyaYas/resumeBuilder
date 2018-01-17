class CreateResumes < ActiveRecord::Migration[5.1]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :phone
      t.string :email
      t.string :website
      t.string :skills
      t.string :summary
      t.belongs_to :template, foreign_key: true

      t.timestamps
    end
  end
end
