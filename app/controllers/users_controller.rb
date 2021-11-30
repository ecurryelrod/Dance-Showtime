class UsersController < ApplicationController
    skip_before_action :login_required, only: [:new, :create]

    def new
        @user = User.new
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            # redirect_to root_path
            redirect_to user_path(user)
        else
            flash[:error] = user.errors.full_messages
            redirect_to signup_path
        end
    end

    def show
        # binding.pry
        current_user
        # @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
