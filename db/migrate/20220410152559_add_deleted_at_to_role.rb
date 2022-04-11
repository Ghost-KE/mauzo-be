# frozen_string_literal: true

# Soft Delete
class AddDeletedAtToRole < ActiveRecord::Migration[7.0]
  def change
    add_column :roles, :deleted_at, :datetime
    add_index :roles, :deleted_at
  end
end
