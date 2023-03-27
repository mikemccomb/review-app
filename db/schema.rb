ActiveRecord::Schema[7.0].define(version: 2023_03_27_175413) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "category_id"
    t.datetime "date"
    t.integer "rating"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.decimal "average_rating"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
