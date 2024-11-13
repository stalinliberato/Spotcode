json.recent_albums @recent_albums do |album|
  json.id album.id
  json.title album.title
  json.artist_name album.artist.name
  json.cover_url url_for(album.cover) if album.cover.attached?
end

json.recommend_albums @recommend_albums do |album|
  json.id album.id
  json.title album.title
  json.artist_name album.artist.name
  json.cover_url url_for(album.cover) if album.cover.attached?
end
