class StaticController < ApplicationController
    skip_before_action :login_required, only: [:home]

    def home
        @performances = Performance.current_or_upcoming_performances.ordered_by_date
    end
end