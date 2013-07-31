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

ActiveRecord::Schema.define(:version => 20130731211140) do

  create_table "advisors", :force => true do |t|
    t.string   "name"
    t.string   "firm"
    t.string   "advisor_type"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "sec_status"
    t.integer  "sec_disclosures"
    t.string   "finra_status"
    t.integer  "finra_disclosures"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "advisors", ["email"], :name => "index_advisors_on_email", :unique => true
  add_index "advisors", ["reset_password_token"], :name => "index_advisors_on_reset_password_token", :unique => true

  create_table "answers", :force => true do |t|
    t.string   "answer"
    t.integer  "score"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "question_id"
    t.integer  "up_votes",    :default => 0, :null => false
    t.integer  "down_votes",  :default => 0, :null => false
  end

  create_table "emails", :force => true do |t|
    t.string "email"
  end

  create_table "questions", :force => true do |t|
    t.string   "title"
    t.string   "details"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "topic"
    t.integer  "user_id"
    t.integer  "answer_id"
    t.integer  "up_votes",   :default => 0, :null => false
    t.integer  "down_votes", :default => 0, :null => false
  end

  create_table "ratings", :force => true do |t|
    t.integer  "trust"
    t.integer  "communication"
    t.integer  "expertise"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "advisor_id"
    t.integer  "active"
    t.integer  "high_touch"
    t.integer  "follower"
    t.integer  "high_iq"
    t.integer  "user_id"
  end

  create_table "search_suggestions", :force => true do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
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
    t.integer  "up_votes",               :default => 0,  :null => false
    t.integer  "down_votes",             :default => 0,  :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "votings", :force => true do |t|
    t.string   "voteable_type"
    t.integer  "voteable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "up_vote",       :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "votings", ["voteable_type", "voteable_id", "voter_type", "voter_id"], :name => "unique_voters", :unique => true
  add_index "votings", ["voteable_type", "voteable_id"], :name => "index_votings_on_voteable_type_and_voteable_id"
  add_index "votings", ["voter_type", "voter_id"], :name => "index_votings_on_voter_type_and_voter_id"

end
