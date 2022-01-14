class CreateJoinTableTransactionsGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_transactions_groups do |t|
      t.index [:activity_id, :group_id]
      t.index [:group_id, :activity_id]
      
      t.timestamps
    end
  end
end
