class VenuesController < ApplicationController
    skip_before_action :login_required, only: [:show]

    def show
        @venue = Venue.find(params[:id])
    end
end
