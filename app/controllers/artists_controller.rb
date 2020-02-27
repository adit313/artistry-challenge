class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
        render :index
    end

    def show
        @artist = Artist.find(params[:id])
        render :show
    end
    
    def add_instrument
        @artist = Artist.find(params[:id])
        @instruments = Instrument.all
        render :add_instrument
    end

    def update_instruments
        ArtistInstrument.create(artist_id: params[:artist_id], instrument_id: params[:instrument][:id])
        @artist=Artist.find(params[:artist_id])
        redirect_to @artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artistparams)
        redirect_to @artist
    end

    private

    def artistparams
        params.require(:artist).permit(:age, :name, :title)
    end

end
