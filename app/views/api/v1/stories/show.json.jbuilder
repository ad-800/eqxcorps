json.(@story, :id, :prompt_id, :storyname)

json.sentences @sentences do |sentence|
  json.id sentence.id
  json.user sentence.user_id
  json.content sentence.content
  json.created_at sentence.created_at
end
