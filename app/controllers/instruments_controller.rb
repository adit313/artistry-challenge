class InstrumentsController < ApplicationController

    def index
        @instruments = Instrument.all
        render :index
    end
    
end
