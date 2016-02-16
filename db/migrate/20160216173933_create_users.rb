class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name,             null: false
      t.string :email,            null: false, index: true, uniqueness: true
      t.string :password_digest,  null: false
      t.string :token_digest

      t.timestamps null: false
    end
  end
end
