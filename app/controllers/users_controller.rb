class UsersController < ApplicationController
    skip_before_action :verified_user, only: [:new, :create]
  
    def new
      @user = User.new
      #@locations = Library.all.collect {|lib|lib.location}.uniq
    end
  
    def create
      if (user = User.create(user_params))
        session[:user_id] = user.id
        redirect_to user_path(user)
      else
        render 'new'
      end
    end

    def show
      @user = User.find_by(id: params[:id])
      @checkouts = CheckOut.where(user_id: current_user.id)
    end

    def edit
      @user = User.find_by(id: params[:id])
    end

    def update
      @user = User.find_by(id: params[:id])
      @user.update(user_params)
      redirect_to user_path(@user), {message: "Updated!"}
    end

    private
    
    def user_params
    params.require(:user).permit(
        :first_name,
        :last_name,
        :username,
        :bio,
        :location,
        :card,
        :admin,
        :password,
        :uid,
        :email
    )
    end
end