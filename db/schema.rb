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

ActiveRecord::Schema.define(version: 2018_08_22_060235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "audits", force: :cascade do |t|
    t.string "activity"
    t.string "target"
    t.string "criterion"
    t.string "requirement"
    t.string "audit_doc"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "process_number"
    t.string "scope"
    t.bigint "site_id"
    t.index ["company_id"], name: "index_audits_on_company_id"
    t.index ["site_id"], name: "index_audits_on_site_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "cnpj"
    t.string "current_certification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "business_name"
  end

  create_table "evidences", force: :cascade do |t|
    t.string "title"
    t.bigint "audit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["audit_id"], name: "index_evidences_on_audit_id"
  end

  create_table "rat_reports", force: :cascade do |t|
    t.text "introduction"
    t.text "comment"
    t.text "observation"
    t.text "improvement"
    t.text "conclusion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "audit_id"
    t.index ["audit_id"], name: "index_rat_reports_on_audit_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "line_1"
    t.string "line_2"
    t.string "line_3"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.string "telephone"
    t.string "contact_name"
    t.string "contact_email"
    t.float "longitude"
    t.float "latitude"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_sites_on_company_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "audit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "manage", default: false
    t.index ["audit_id"], name: "index_teams_on_audit_id"
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "role"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "audits", "companies"
  add_foreign_key "audits", "sites"
  add_foreign_key "evidences", "audits"
  add_foreign_key "rat_reports", "audits"
  add_foreign_key "sites", "companies"
  add_foreign_key "teams", "audits"
  add_foreign_key "teams", "users"
end
