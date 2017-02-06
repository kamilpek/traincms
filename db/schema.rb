# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170206172531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.text     "title"
    t.integer  "category_id"
    t.boolean  "active"
    t.text     "intro"
    t.text     "content"
    t.integer  "visit"
    t.boolean  "highlight"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.text     "image"
    t.index ["category_id"], name: "index_articles_on_category_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.text     "title"
    t.text     "desc"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "article_id"
    t.text     "author"
    t.text     "content"
    t.text     "email"
    t.text     "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id", using: :btree
  end

  create_table "components", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.integer  "order"
    t.integer  "position_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["position_id"], name: "index_components_on_position_id", using: :btree
  end

  create_table "menu_types", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.text     "title"
    t.integer  "menu_type_id"
    t.integer  "order"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["menu_type_id"], name: "index_menus_on_menu_type_id", using: :btree
  end

  create_table "positions", force: :cascade do |t|
    t.text     "title"
    t.integer  "width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_refs", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_tag_refs_on_article_id", using: :btree
    t.index ["tag_id"], name: "index_tag_refs_on_tag_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.text     "title"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "articles", "categories"
  add_foreign_key "comments", "articles"
  add_foreign_key "components", "positions"
  add_foreign_key "menus", "menu_types"
  add_foreign_key "tag_refs", "articles"
  add_foreign_key "tag_refs", "tags"
end
