class PerformancesController < ApplicationController
    skip_before_action :login_required, only: [:show]

    def new
        @performance = Performance.new
        @venue = @performance.build_venue
    end

    def create
        @performance = current_user.performances.build(performance_params)
        if @performance.save
            redirect_to user_performance_path(current_user, @performance)
        else
            @venue = @performance.venue
            render :new
        end
    end

    def show
        @performance = Performance.find_by(id: params[:id])
        redirect_to root_path if !@performance
    end

    def edit
        @performance = Performance.find(params[:id])
    end

    def update
        @performance = Performance.find(params[:id])
        if @performance.update(performance_params)
            flash[:message] = "Performance updated successfully"
            redirect_to user_performance_path(current_user, @performance), alert: "Performance updated successfully"
        else
            render :edit
        end
    end

    def destroy

    end

    private 

    def performance_params
        params.require(:performance).permit(:title, :company_name, :start_date, :end_date, :time, :ticket_price, :ticket_url, :description, :company_url, :user_id, :venue_id, venue_attributes:[:id, :name, :address_1, :adress_2, :city, :state, :zipcode, :venue_url])
    end
end
