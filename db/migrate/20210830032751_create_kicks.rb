class CreateKicks < ActiveRecord::Migration[6.1]
  def change
    create_table :kicks do |t|
      t.string :brand
      t.string :style
      t.float :size

      t.timestamps
    end
  end
end
