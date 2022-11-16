# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_16_160819) do
  create_table "agencias", force: :cascade do |t|
    t.text "endereco"
    t.integer "num_agencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agencias_contas", id: false, force: :cascade do |t|
    t.integer "agencia_id", null: false
    t.integer "conta_id", null: false
    t.index ["agencia_id"], name: "index_agencias_contas_on_agencia_id"
    t.index ["conta_id"], name: "index_agencias_contas_on_conta_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "telefone"
    t.string "email"
    t.text "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contas", force: :cascade do |t|
    t.integer "numero"
    t.decimal "saldo"
    t.date "data_abertura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "clientes_id", null: false
    t.integer "agencias_id", null: false
    t.index ["agencias_id"], name: "index_contas_on_agencias_id"
    t.index ["clientes_id"], name: "index_contas_on_clientes_id"
    t.index ["numero"], name: "index_contas_on_numero", unique: true
  end

  add_foreign_key "contas", "agencias", column: "agencias_id"
  add_foreign_key "contas", "clientes", column: "clientes_id"
end
