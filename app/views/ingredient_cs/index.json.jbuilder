json.array!(@ingredient_cs) do |ingredient_c|
  json.extract! ingredient_c, :id, :name, :recipec_id
  json.url ingredient_c_url(ingredient_c, format: :json)
end
