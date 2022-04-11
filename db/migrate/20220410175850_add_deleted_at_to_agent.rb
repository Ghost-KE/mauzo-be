class AddDeletedAtToAgent < ActiveRecord::Migration[7.0]
  def change
    add_column :agents, :deleted_at, :datetime
    add_index :agents, :deleted_at
  end
end
