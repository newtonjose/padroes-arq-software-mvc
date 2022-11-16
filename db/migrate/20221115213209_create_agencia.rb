class CreateAgencia < ActiveRecord::Migration[7.0]
  def change
    create_table :agencias do |t|
      t.text :endereco
      t.integer :num_agencia

      t.timestamps
    end
  end
end
