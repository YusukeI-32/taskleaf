class RenameDiscriptionColumnToTasks < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :discription, :description
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
