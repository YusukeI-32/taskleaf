class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      # not null 制約
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
      # emailにユニーク追加
      t.index :email, unique: true
    end
  end
end
