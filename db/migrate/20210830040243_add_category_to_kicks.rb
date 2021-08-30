class AddCategoryToKicks < ActiveRecord::Migration[6.1]
  def change
    add_column :kicks, :category_id, :integer
  end
end
