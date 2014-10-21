json.array!(@food_menus) do |food_menu|
  json.extract! food_menu, :id, :name, :photo, :description, :price
  json.url food_menu_url(food_menu, format: :json)
end
