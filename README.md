#Audition Idea

#Idea: Playlist holder.

#Functionality:

  Auth
    -User Auth

  Playlist
    -Create a playlist(anyone)
    -Delete a playlist(only if you created it)
    -Edit a playlist(anyone)
    -View all playlists
    -View your playlists

  Songs
    -Add a song
    -Delete a song(only if you added it)


#Models:

  -User
  -Playlist
  -Song

#Tables:

  Users
    -ID
    -username
    -password_digest

  Playlist
    -ID
    -Name
    -user_id(creator)
    -Genre/Theme?

  Song
    -ID
    -Title
    -song_url
    -user_id
    -playlist_id

#Validations:
  -Playlist has to have a title
  -Playlist has to be unique

#Associations:
    User
      -has_many :playlists
      -has_many songs through playlist
    Playlist
      -has_many :songs
      -belongs_to :user
    Song
      -belongs_to :user, playlist

#Routes:
  -USER AUTH - DONE (redirect to '/home')
  -'/myprofile (GET)
  -'/new_song' (GET, POST)
  -'/delete_song' (DELETE)
  -'/new_playlist' (GET, POST)
  -'delete_playlist' (DELETE)
  -'edit_playlist' (GET, PUT)

#AJAX:

AJAX DRAG AND DROP
SEED DATA
CSS

#Stretch - API:

#Order of operations:

-----COMMIT COMMIT COMMIT-----

1) Setup tables, migrations, and seed the data - DONE
2) CRUD Playlist (all separate pages) -
3) CRUD Song
4) Make sure the associations work
-----GOAL LUNCH---------------
5) Make sure the edit/delete only if you are user
6) Make AJAX Buttons for CRUD
7) Beautify
-----REASSESS___________
8) Drag and Drop
9  API Page to pull API info

