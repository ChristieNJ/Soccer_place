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

ActiveRecord::Schema.define(:version => 20120413235449) do

  create_table "comentarios", :force => true do |t|
    t.text     "texto"
    t.integer  "calificacion"
    t.integer  "locals_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "comentarios", ["locals_id"], :name => "index_comentarios_on_locals_id"

  create_table "locals", :force => true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "distrito"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "telefono_fijo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "publicidades", :force => true do |t|
    t.string   "titulo"
    t.string   "contenido"
    t.string   "FecInicio"
    t.string   "FecFin"
    t.decimal  "Tarifa"
    t.integer  "num_clicks"
    t.integer  "ubicacion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "serv_adicionales", :force => true do |t|
    t.string   "Tipo"
    t.string   "descripcion"
    t.decimal  "tarifa"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "servicios_adicionales", :force => true do |t|
    t.string   "descripcion"
    t.decimal  "tarifa"
    t.integer  "tipo_serv_adicionales_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "servicios_adicionales", ["tipo_serv_adicionales_id"], :name => "index_servicios_adicionales_on_tipo_serv_adicionales_id"

  create_table "tipo_serv_adicionales", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_serv_adicionals", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "turnos", :force => true do |t|
    t.string   "nombre"
    t.integer  "lunes"
    t.integer  "martes"
    t.integer  "miercoles"
    t.integer  "jueves"
    t.integer  "viernes"
    t.integer  "sabado"
    t.integer  "domingo"
    t.string   "HoraIni"
    t.string   "HoraFin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "tip_persona"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "sexo"
    t.string   "tip_doc"
    t.string   "nro_doc"
    t.string   "correo"
    t.string   "pass"
    t.string   "fec_nac"
    t.string   "celular"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
