class SessionsController < ApplicationController
    skip_before_action :login_required, only: [:new, :create]

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

    def destroy
        session.delete :user_id 
        redirect_to root_path
    end
end