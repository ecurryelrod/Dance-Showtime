class SessionsController < ApplicationController
    skip_before_action :login_required, only: [:new, :create]

    def new; end

    def create
        if auth
            @user = User.find_or_create_by(email: auth[:info][:email]) do |u|
                u.name = auth[:info][:name]
                u.password = SecureRandom.hex(10)
            end
            if @user.save
                user_saved_redirect
            else
                redirect_to login_path
            end
        else
            @user = User.find_by(email: params[:email])
            # if user && user.authenticate(params[:password])
            if @user.try(:authenticate, params[:password])
                user_saved_redirect
            else
                flash[:message] = "Incorrect email/password. Try again or create an account."
                redirect_to login_path
            end
        end
    end

    def destroy
        session.delete :user_id 
        flash[:message] = "Successfully Logged Out"
        redirect_to root_path
    end

    private

    def auth
        request.env['omniauth.auth']
    end

    def user_saved_redirect
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end
end