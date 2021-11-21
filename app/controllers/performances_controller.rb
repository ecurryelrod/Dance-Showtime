class PerformancesController < ApplicationController
    # skip_before_action :login_required, only: [:new, :show]

    def new
        @performance = Performance.new
    end

    def create
        # performance = Performance.create(performance_params)
        performance = current_user.performances.build(performance_params)
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private 

    def performance_params
        params.require(:performance).permit(:title, :date_time, :ticket_price, :ticket_url, :description, :company_url, :user_id, :venue_id)
    end
end
