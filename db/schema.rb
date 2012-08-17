# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120817153810) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "awards", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "logo1_file_name"
    t.string   "logo1_content_type"
    t.integer  "logo1_file_size"
    t.datetime "logo1_updated_at"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.decimal  "year",               :precision => 4, :scale => 0
    t.decimal  "year1",              :precision => 4, :scale => 0
    t.string   "description1"
    t.decimal  "year2",              :precision => 4, :scale => 0
    t.string   "description2"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "clients", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "point1"
    t.string   "point2"
    t.string   "point3"
    t.string   "point4"
    t.string   "point5"
    t.string   "logo1_file_name"
    t.string   "logo1_content_type"
    t.integer  "logo1_file_size"
    t.datetime "logo1_updated_at"
    t.string   "logo2_file_name"
    t.string   "logo2_content_type"
    t.integer  "logo2_file_size"
    t.datetime "logo2_updated_at"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "works", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "logo1_file_name"
    t.string   "logo1_content_type"
    t.integer  "logo1_file_size"
    t.datetime "logo1_updated_at"
    t.string   "logo2_file_name"
    t.string   "logo2_content_type"
    t.integer  "logo2_file_size"
    t.datetime "logo2_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
