class AddAdminToUsers < ActiveRecord::Migration[5.2]
  #usersテーブルにboolean型のadminカラムを追加デフォルトではfalse　not null制約　
  def change
    add_column :users, :admin, :boolean , default: false, null: false
  end
end