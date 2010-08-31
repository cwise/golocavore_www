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

ActiveRecord::Schema.define(:version => 20100831132450) do

  create_table "site_domains", :force => true do |t|
    t.string   "code",       :null => false
    t.string   "url",        :null => false
    t.string   "country",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_statuses", :force => true do |t|
    t.string   "code",        :null => false
    t.string   "description", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.string   "city",           :null => false
    t.integer  "site_domain_id"
    t.string   "subdomain",      :null => false
    t.integer  "site_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
