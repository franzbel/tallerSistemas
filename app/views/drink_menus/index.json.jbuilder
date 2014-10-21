json.array!(@drink_menus) do |drink_menu|
  json.extract! drink_menu, :id, :name, :photo, :description, :price
  json.url drink_menu_url(drink_menu, format: :json)
end
