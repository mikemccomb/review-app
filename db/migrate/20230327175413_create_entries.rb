class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.integer :subject_id
      t.integer :category_id
      t.datetime :date
      t.integer :rating
      t.text :notes

      t.timestamps
    end
  end
end
