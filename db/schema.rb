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

ActiveRecord::Schema.define(:version => 20130427095114) do

  create_table "corrections", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "contenu"
  end

  create_table "dynamiques", :force => true do |t|
    t.boolean  "bac"
    t.boolean  "correction"
    t.string   "titre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exercice_dynamiques", :force => true do |t|
    t.integer  "exercice_id"
    t.integer  "dynamique_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "exercice_statiques", :force => true do |t|
    t.integer  "exercice_id"
    t.integer  "statique_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "exercice_sujet_statiques", :force => true do |t|
    t.integer  "exercice_id"
    t.integer  "sujet_statique_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "exercices", :force => true do |t|
    t.boolean  "bac"
    t.integer  "millesime"
    t.text     "contenu"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "theme_id"
    t.integer  "correction_id"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "statiques", :force => true do |t|
    t.boolean  "bac"
    t.string   "titre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "correction"
  end

  create_table "sujet_statiques", :force => true do |t|
    t.boolean  "bac"
    t.string   "titre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sujets", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "themes", :force => true do |t|
    t.string   "intitule"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
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

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
