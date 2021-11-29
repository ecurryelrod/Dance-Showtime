class PerformancesController < ApplicationController
    skip_before_action :login_required, only: [:show]

    # def index
    #     if params[:user_id] # if the route is nested then:
    #         @performances = current_user.performances
    #     else # if the route is not nested
    #         @performances = Performance.all 
    #     end
    # end

    def new
        @performance = Performance.new
    end

    def create
        # binding.pry
        @performance = current_user.performances.build(performance_params)
        if @performance.save
            redirect_to user_performance_path(current_user, @performance)
        else
            flash[:error] = @performance.errors.full_messages
            render :new
        end
    end

    def show
        # binding.pry
        @performance = Performance.find(params[:id])
    end

    def edit
        @performance = Performance.find(params[:id])
    end

    def update

    end

    def destroy

    end

    private 

    def performance_params
        params.require(:performance).permit(:title, :start_date, :end_date, :time, :ticket_price, :ticket_url, :description, :company_url, :user_id, :venue_id, venue_attributes:[:id, :name, :address_1, :adress_2, :city, :state, :zipcode, :venue_url])
    end
end
