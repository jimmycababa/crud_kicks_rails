class AddUserIdToKicks < ActiveRecord::Migration[6.1]
  def change
    # first argument is the table name, 2nd argument is the column name we want to add, and then the data type
    add_column :kicks, :user_id, :integer
  end
end
