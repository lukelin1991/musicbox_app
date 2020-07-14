class PlaylistSongsController < ApplicationController
    def index # (/manythings)
        @playlist_songs = PlaylistSong.all
        @users = User.all
        @playlists = Playlist.all
        @songs = Song.all
        @artists = Artist.all

        @info = {
            "users": @users,
            "playlists": @playlists,
            "songs": @songs,
            "artists": @artists,
            "playlist_songs": @playlist_songs
        }

        render json: @info.to_json(except: [:created_at, :updated_at])
    end

    def show # (/manythings/:id)
        @playlist_song = PlaylistSong.find(params[:id])

        render json: @playlist_song.to_json(except: [:created_at, :updated_at])
    end

    def create #
        @playlist_song = PlaylistSong.create(playlist_song_params)
        render json: @playlist_song
    end
    
    def destroy # destroy said things. 
        @playlist_song = PlaylistSong.find(params[:id])
        @playlist_song.destroy
    end

    private

    def playlist_song_params
        params.permit(:playlist_id, :song_id)
    end

end
