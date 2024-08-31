Menu.delete_all
SetMenu.delete_all

menus = [
  { name: 'ミノ', price: 980, is_set: false },
  { name: 'ハラミ', price: 1200, is_set: false },
  { name: 'カルビ', price: 1500, is_set: false },
  { name: 'ライス', price: 200, is_set: false },
  { name: 'ウーロン茶', price: 300, is_set: false },
  { name: 'セットA', price: 3500, is_set: true },
  { name: 'セットB', price: 4500, is_set: true }
]

Menu.insert_all(menus)
puts "メニューデータを挿入しました"

set_a = Menu.find_by(name: 'セットA')
set_a.set_menus.create([
  { menu_id: Menu.find_by(name: 'ミノ').id, quantity: 1 },
  { menu_id: Menu.find_by(name: 'ハラミ').id, quantity: 1 },
  { menu_id: Menu.find_by(name: 'カルビ').id, quantity: 1 }
])
