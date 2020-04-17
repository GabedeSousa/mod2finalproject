# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_15_232545) do

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "listing_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_comments_on_listing_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "exchanges", force: :cascade do |t|
    t.integer "listing_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_exchanges_on_listing_id"
    t.index ["user_id"], name: "index_exchanges_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "condition"
    t.string "make"
    t.integer "size"
    t.boolean "active", default: true
    t.float "price"
    t.text "description"
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_listings_on_product_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "image"
    t.integer "type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type_id"], name: "index_products_on_type_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "product_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_reviews_on_product_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.integer "likes"
    t.float "balance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "comments", "listings"
  add_foreign_key "comments", "users"
  add_foreign_key "exchanges", "listings"
  add_foreign_key "exchanges", "users"
  add_foreign_key "listings", "products"
  add_foreign_key "listings", "users"
  add_foreign_key "products", "types"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
end
