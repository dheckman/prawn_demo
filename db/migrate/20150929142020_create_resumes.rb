class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :label
      t.string :title

      t.timestamps null: false
    end
  end
end
