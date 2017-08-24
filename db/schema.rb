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

ActiveRecord::Schema.define(version: 0) do

  create_table "channels", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 50
    t.integer "owner"
    t.integer "org_id"
    t.boolean "is_private"
    t.text "state"
    t.text "status"
  end

  create_table "organizations", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 100
    t.string "logo"
    t.string "primary_contact_email"
    t.boolean "status"
    t.string "details"
  end

  create_table "users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email", limit: 50
    t.string "first_name", limit: 50
    t.string "last_name", limit: 50
    t.string "password_hash", limit: 128
    t.string "password_salt", limit: 128
    t.integer "org_id"
    t.text "access_token"
    t.boolean "should_reset_password"
  end

end
