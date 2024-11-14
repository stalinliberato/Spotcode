json.songs @favorites_songs.each do |song|
    json.id song.id
    json.title song.title
    json.artist_name song.album.artist.name
    json.file_url url_for(song.file)
end

json.artist @favorites_artists.each do |song|
    json.id artist.id
    json.name artist.title
    json.photo_url url_for(artist.photo)
end

json.albums @favorites_albums.each do |song|
    json.id album.id
    json.name album.title
    json.cover_url url_for(artist.cover)
end