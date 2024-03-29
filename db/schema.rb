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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141006170148) do

  create_table "alineacions", force: true do |t|
    t.integer  "objetivo_id"
    t.integer  "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alineacions", ["objetivo_id"], name: "index_alineacions_on_objetivo_id"
  add_index "alineacions", ["proyecto_id"], name: "index_alineacions_on_proyecto_id"

  create_table "membresia", force: true do |t|
    t.integer  "user_id"
    t.integer  "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "membresia", ["proyecto_id"], name: "index_membresia_on_proyecto_id"
  add_index "membresia", ["user_id"], name: "index_membresia_on_user_id"

  create_table "objetivos", force: true do |t|
    t.text     "nombre_objetivo"
    t.integer  "organizacion_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "objetivos", ["organizacion_id", "created_at"], name: "index_objetivos_on_organizacion_id_and_created_at"
  add_index "objetivos", ["organizacion_id"], name: "index_objetivos_on_organizacion_id"

  create_table "organizacions", force: true do |t|
    t.string   "nombre_organizacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.decimal  "presupuesto"
    t.boolean  "es_estrategico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tareas", force: true do |t|
    t.text     "descripcion"
    t.datetime "tiempo_limite"
    t.integer  "complejidad"
    t.integer  "puntuacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "usuario_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
