class SessionsController < ApplicationController
    skip_before_action :login_required, only: [:new, :create]

    def new; end

    def create
        # binding.pry
        if auth
            @user = User.find_or_create_by(email: auth[:info][:email]) do |u|
                u.name = auth[:info][:name]
                u.password = SecureRandom.hex(10)
            end
            if @user.save
                session[:user_id] = @user.id
                redirect_to user_path(@user)
            else
                redirect_to login_path
            end
        else
            @user = User.find_by(email: params[:email])
            # if user && user.authenticate(params[:password])
            if @user.try(:authenticate, params[:password])
                session[:user_id] = @user.id
                # redirect_to root_path
                redirect_to user_path(@user)
            else
                # flash[:error] = user.errors.full_messages # cannot do this as user is nil if email and password field blank. Not sure how to get it to work if even possible. Tried googling and didn't find anything useful... 
                flash[:message] = "Incorrect email/password. Try again or create an account."
                redirect_to login_path
            end
        end
    end

    def google_login
        # binding.pry
        @user = User.find_or_create_by(email: auth[:info][:email]) do |u|
            u.name = auth[:info][:name]
            u.password = SecureRandom.hex(10)
        end
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to login_path
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
end