# MUSICAS

tmp_dir = Rails.root.join("tmp")

# Criando categorias com imagem
rock = Category.create!(name: "Rock")
rock.image.attach(io: File.open("#{tmp_dir}/seed_files/rock.jpg"), filename: "rock.jpg")

sertanejo = Category.create!(name: "Sertanejo")
sertanejo.image.attach(io: File.open("#{tmp_dir}/seed_files/sertanejo.jpg"), filename: "sertanejo.jpg")

funk = Category.create!(name: "Funk")
funk.image.attach(io: File.open("#{tmp_dir}/seed_files/funk.jpg"), filename: "funk.jpg")

# Criando artistas com foto
joao_gomes = Artist.create!(name: "João Gomes")
joao_gomes.photo.attach(io: File.open("#{tmp_dir}/seed_files/joao_gomes.jpg"), filename: "joao_gomes.jpg")

# Criando álbum de João Gomes e associando imagem de capa
coracao_vaqueiro_album = joao_gomes.albums.create!(title: "Coração Vaqueiro", date: Time.strptime("18/05/2015", "%d/%m/%Y"), category: sertanejo)
coracao_vaqueiro_album.cover.attach(io: File.open("#{tmp_dir}/seed_files/coracao_vaqueiro_album.jpg"), filename: "coracao_vaqueiro_album.jpg")

# Criando música associada ao álbum e anexando arquivo de áudio
coracao_vaqueiro = coracao_vaqueiro_album.songs.create!(title: "Coração Vaqueiro", played_count: Random.rand(1000))
coracao_vaqueiro.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/coracao_vaqueiro.mp3"), filename: "coracao_vaqueiro.mp3")

# Criando artista Mr. Catra com foto
mr_catra = Artist.create!(name: "Mr Catra")
mr_catra.photo.attach(io: File.open("#{tmp_dir}/seed_files/mr_catra.jpg"), filename: "mr_catra.jpg")

# Criando álbum de Mr. Catra e associando imagem de capa
album_catra = mr_catra.albums.create!(title: "Funk Mr. Catra - Melhores", date: Time.strptime("18/05/2015", "%d/%m/%Y"), category: funk)
album_catra.cover.attach(io: File.open("#{tmp_dir}/seed_files/album_catra.jpg"), filename: "album_catra.jpg")

# Criando música associada ao álbum e anexando arquivo de áudio
voce_lembrar = album_catra.songs.create!(title: "Voce Lembrar", played_count: Random.rand(1000))
voce_lembrar.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/voce_lembrar.mp3"), filename: "voce_lembrar.mp3")

#############################################################################################################################################################

# USUARIOS #

# Criando usuários e associando favoritos e recentemente ouvidos
freddie_mercury = User.create!(name: "Freddie Mercury", email: "freddie@mercury.com", password: "123456", password_confirmation: "123456")
freddie_mercury.favorites.create!(favoritable: voce_lembrar)
freddie_mercury.recently_heards.create!(album: coracao_vaqueiro_album)
freddie_mercury.recently_heards.create!(album: album_catra)

diana_ross = User.create!(name: "Diana Ross", email: "diana@ross.com", password: "123456", password_confirmation: "123456")
diana_ross.favorites.create!(favoritable: voce_lembrar)
diana_ross.recently_heards.create!(album: coracao_vaqueiro_album)

michael_jackson = User.create!(name: "Michael Jackson", email: "michael@jackson.com", password: "123456", password_confirmation: "123456")
michael_jackson.favorites.create!(favoritable: voce_lembrar)
michael_jackson.favorites.create!(favoritable: coracao_vaqueiro)

celine_dion = User.create!(name: "Celine Dion", email: "celine@dion.com", password: "123456", password_confirmation: "123456")
celine_dion.favorites.create!(favoritable: coracao_vaqueiro)
celine_dion.favorites.create!(favoritable: voce_lembrar)
