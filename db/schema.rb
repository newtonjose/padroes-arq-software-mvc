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

ActiveRecord::Schema[7.0].define(version: 2022_11_15_213308) do
  create_table "agencia", force: :cascade do |t|
    t.text "endereco"
    t.integer "num_agencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "conta", force: :cascade do |t|
    t.integer "numero"
    t.decimal "saldo"
    t.date "data_abertura"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["numero"], name: "index_conta_on_numero", unique: true
  end

end
