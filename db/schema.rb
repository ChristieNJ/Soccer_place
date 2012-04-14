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

ActiveRecord::Schema.define(:version => 20120414143725) do

  create_table "alquilers", :force => true do |t|
    t.string   "fecha"
    t.string   "HoraIni"
    t.string   "HoraFin"
    t.integer  "cancha_futbol_id"
    t.integer  "usuarios_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "alquilers", ["cancha_futbol_id"], :name => "index_alquilers_on_cancha_futbol_id"
  add_index "alquilers", ["usuarios_id"], :name => "index_alquilers_on_usuarios_id"

  create_table "cancha_futbols", :force => true do |t|
    t.string   "nombre"
    t.string   "caracteristicas"
    t.string   "tarifa"
    t.string   "promocion"
    t.integer  "turnos_id"
    t.integer  "locals_id"
    t.integer  "comentarios_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "cancha_futbols", ["comentarios_id"], :name => "index_cancha_futbols_on_comentarios_id"
  add_index "cancha_futbols", ["locals_id"], :name => "index_cancha_futbols_on_locals_id"
  add_index "cancha_futbols", ["turnos_id"], :name => "index_cancha_futbols_on_turnos_id"

  create_table "canchas_futbols", :force => true do |t|
    t.string   "nombre"
    t.string   "caracteristicas"
    t.decimal  "tarifa"
    t.string   "promocion"
    t.integer  "turnos_id"
    t.integer  "locals_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "canchas_futbols", ["locals_id"], :name => "index_canchas_futbols_on_locals_id"
  add_index "canchas_futbols", ["turnos_id"], :name => "index_canchas_futbols_on_turnos_id"

  create_table "comentarios", :force => true do |t|
    t.text     "texto"
    t.integer  "calificacion"
    t.integer  "locals_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "comentarios", ["locals_id"], :name => "index_comentarios_on_locals_id"

  create_table "coments", :force => true do |t|
    t.text     "texto"
    t.integer  "calificacion"
    t.integer  "canchas_futbols_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "coments", ["canchas_futbols_id"], :name => "index_coments_on_canchas_futbols_id"

  create_table "evento_deportivos", :force => true do |t|
    t.string   "nombre"
    t.string   "premio"
    t.integer  "CantidadLinEq"
    t.string   "plazoinscripcion"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

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
