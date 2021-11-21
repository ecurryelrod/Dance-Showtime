class SessionsController < ApplicationController
    skip_before_action :login_required, only: [:new, :create]

    def new; end

    def create
        @user = User.find_by(email: params[:email])
        if @user.try(:authenticate, params[:password])
        # if user && user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to @user
        else
            # binding.pry
            # flash[:error] = user.errors.full_messages # cannot do this as user is nil if email and password field blank. Not sure how to get it to work if even possible. Tried googling and didn't find anything useful... 
            flash[:error] = "Incorrect email/password. Try again or create an account."
            redirect_to login_path
        end
    end

    def destroy
        session.delete :user_id 
        redirect_to root_path
    end
end