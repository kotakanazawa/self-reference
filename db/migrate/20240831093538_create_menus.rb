class CreateMenus < ActiveRecord::Migration[7.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price
      t.boolean :is_set

      t.timestamps
    end
  end
end
