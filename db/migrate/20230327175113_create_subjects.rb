class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :category_id
      t.decimal :average_rating
      t.text :description

      t.timestamps
    end
  end
end
