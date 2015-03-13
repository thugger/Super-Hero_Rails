json.array!(@super_heroes) do |super_hero|
  json.extract! super_hero, :id, :real_name, :hero_name
  json.url super_hero_url(super_hero, format: :json)
end
