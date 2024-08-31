class CreateSetMenus < ActiveRecord::Migration[7.2]
  def change
    create_table :set_menus do |t|
      t.integer :quantity
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
