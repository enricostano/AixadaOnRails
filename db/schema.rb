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

ActiveRecord::Schema.define(:version => 20121114175657) do

  create_table "family_units", :force => true do |t|
    t.string   "name",                                   :null => false
    t.boolean  "active",               :default => true
    t.integer  "mentor_familyunit_id", :default => 0
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "incident_types", :force => true do |t|
    t.string   "description", :null => false
    t.text     "definition",  :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "incidents", :force => true do |t|
    t.string   "subject",                                            :null => false
    t.integer  "incident_type_id",                                   :null => false
    t.integer  "user_id",                                            :null => false
    t.text     "details",                                            :null => false
    t.integer  "priority",                       :default => 3
    t.string   "status",           :limit => 10, :default => "Open"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "custom_member_ref",                                 :null => false
    t.string   "name",                                              :null => false
    t.string   "address",                                           :null => false
    t.string   "nif",               :limit => 15
    t.string   "zip",               :limit => 10
    t.string   "city",                                              :null => false
    t.string   "phone1",            :limit => 50
    t.string   "phone2",            :limit => 50
    t.string   "web"
    t.text     "notes"
    t.boolean  "active",                          :default => true
    t.boolean  "participant",                     :default => true
    t.boolean  "adult",                           :default => true
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.integer  "user_id"
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
