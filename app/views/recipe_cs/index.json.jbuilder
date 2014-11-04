json.array!(@recipe_cs) do |recipe_c|
  json.extract! recipe_c, :id, :name, :list, :preparation
  json.url recipe_c_url(recipe_c, format: :json)
end
