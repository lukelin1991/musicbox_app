class PlaylistsController < ApplicationController
    before_action :set_playlist, only: [:show, :update, :destroy]
    
    def index
        @playlists = Playlist.all

        render json: @playlists.to_json(except: [:created_at, :updated_at])
    end

    def create
        @playlist = Playlist.create(playlist_params)

        render json: @playlist
    end

    def show
        render json: @playlist.to_json(except: [:created_at, :updated_at])
    end


    def update
        @playlist.update(playlist_params)
        render json: @playlist.to_json(except: [:created_at, :updated_at])
    end

    def destroy
        @playlist.destroy
    end

    private

    def set_playlist
        @playlist = Playlist.find(params[:id])
    end

    def playlist_params
        params.permit(:name, :user_id)
    end

end
