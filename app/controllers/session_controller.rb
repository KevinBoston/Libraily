class SessionController < ApplicationController
    skip_before_action :verified_user, only: [:new, :create]

    def new
        @user = User.new
    end

    def create
        if request.env['omniauth.auth']	
            @user = User.find_or_create_by_omniauth(auth)
            session[:user_id] = @user.id
            message = "Thank you for authenticating with GitHub. Please add your user details by editing your details."
            redirect_to user_path(@user)
        else 
        @user = User.find_by(username:params[:user][:username])
        if @user && @user.authenticate(params[:user_password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end
end

    def destroy
        session.delete("user_id")
        redirect_to root_path
    end

    private
    def auth
        request.env['omniauth.auth']
    end
end