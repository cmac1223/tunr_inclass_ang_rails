class SongsController < ApplicationController
    def index
        @songs = Song.all
        render json: @songs
    end

    def show
        @song = Song.find(params["id"])
        @artist = Artist.find(params[:artist_id])
        render json: {
            song: @song
        }
    end

    def create
        @song = Song.create(song_params)
        redirect_to new_artist_song_path
    end

    
    
    
end
