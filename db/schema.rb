# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100201000641) do

  create_table "films", :force => true do |t|
    t.integer  "viewing_id"
    t.string   "title"
    t.string   "director"
    t.text     "synopsis"
    t.date     "released_on"
    t.string   "imdb_permalink"
    t.string   "suggested_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.string   "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members_viewings", :force => true do |t|
    t.integer "member_id"
    t.integer "viewing_id"
  end

  create_table "viewings", :force => true do |t|
    t.string   "title"
    t.datetime "scheduled_at"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
