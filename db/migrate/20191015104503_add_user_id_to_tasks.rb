class AddUserIdToTasks < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM tasks;'
    add_reference :tasks, :user, null: false, index: true
  end
  # null: false,[:userの後ろ]
  
  def down
    remove_reference :tasks, :user, index: true
  end
end
