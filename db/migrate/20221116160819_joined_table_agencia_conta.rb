class JoinedTableAgenciaConta < ActiveRecord::Migration[7.0]
  def change
    create_join_table :agencias, :contas do |t|
      t.index :agencia_id
      t.index :conta_id
    end
  end
end
