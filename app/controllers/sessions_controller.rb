class SessionsController < ApplicationController
    def new; end

    def create
        user = User.find_by(email: params[:email])
        if user.try(:authenticate, params[:password])
        # if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user
        else
            flash[:error] = "Incorrect email/password. Try again or create an account."
            redirect_to login_path
        end
    end
end