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

ActiveRecord::Schema.define(:version => 20120126003112) do

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "tel"
    t.string   "correo"
    t.string   "mensaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", :force => true do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "feventos_file_name"
    t.string   "feventos_content_type"
    t.integer  "feventos_file_size"
    t.datetime "feventos_updated_at"
  end

  create_table "fotos", :force => true do |t|
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "galerias", :force => true do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fgaleria_file_name"
    t.string   "fgaleria_content_type"
    t.integer  "fgaleria_file_size"
    t.datetime "fgaleria_updated_at"
  end

  create_table "musicas", :force => true do |t|
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
  end

  create_table "sliders", :force => true do |t|
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
