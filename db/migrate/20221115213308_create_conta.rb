class CreateConta < ActiveRecord::Migration[7.0]
  def change
    create_table :conta do |t|
      t.integer :numero
      t.numeric :saldo
      t.date :data_abertura

      t.timestamps
    end
    add_index :conta, :numero, unique: true
  end
end
