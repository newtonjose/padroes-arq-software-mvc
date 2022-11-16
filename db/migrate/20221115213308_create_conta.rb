class CreateConta < ActiveRecord::Migration[7.0]
  def change
    create_table :contas do |t|
      t.integer :numero
      t.numeric :saldo
      t.date :data_abertura

      t.timestamps
    end
    add_index :contas, :numero, unique: true
    add_reference :contas, :clientes, null: false, foreign_key: true
    add_reference :contas, :agencias, null: false, foreign_key: true
  end
end
