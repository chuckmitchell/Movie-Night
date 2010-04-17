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

ActiveRecord::Schema.define(:version => 20100403192026) do

  create_table "films", :force => true do |t|
    t.string   "title"
    t.string   "director"
    t.text     "synopsis"
    t.date     "released_on"
    t.string   "imdb_permalink"
    t.string   "suggested_by"
    t.boolean  "active",              :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "poster_file_name"
    t.string   "poster_content_type"
    t.integer  "poster_file_size"
    t.datetime "poster_updated_at"
  end

  create_table "invitations", :force => true do |t|
    t.string   "sender_email"
    t.string   "invitee_email"
    t.text     "message"
    t.datetime "sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.boolean  "active",     :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members_viewings", :id => false, :force => true do |t|
    t.integer "member_id",  :null => false
    t.integer "viewing_id", :null => false
  end

  create_table "requests", :force => true do |t|
    t.string   "requester_name"
    t.string   "requester_email"
    t.string   "title"
    t.string   "link"
    t.boolean  "new",             :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "viewings", :force => true do |t|
    t.string   "title"
    t.integer  "film_id",                        :null => false
    t.datetime "scheduled_at"
    t.boolean  "active",       :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
