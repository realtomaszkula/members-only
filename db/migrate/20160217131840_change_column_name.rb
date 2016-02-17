class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :token_digest, :remember_digest
  end
end
