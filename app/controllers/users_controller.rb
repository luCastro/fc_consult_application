class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new user_params

        if @user.save
            session[:user_id] = @user.id
            redirect_to users_path
        else
            render :new
        end
    end

    def index
        @users = User.all.order(created_at: :desc)
    end
    
    private
    def user_params
        params.require(:user).permit(
          :first_name, :last_name, :address, :email, :role, :password, :password_confirmation
        )
    end

end