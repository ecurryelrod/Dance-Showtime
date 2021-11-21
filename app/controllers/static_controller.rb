class StaticController < ApplicationController
    skip_before_action :login_required, only: [:home]

    def home
        @performances = Performance.all
    end
end