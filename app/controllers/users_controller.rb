class UsersController < ApplicationController

 
    def index
        @users = User.all.order(created_at: :desc)
    end

    def show
        @user = User.find params[:id]
    end

    def edit
    end

    def  update

        if @user.update(user_params)
            redirect_to user_path(@user.id)
        else
            render :edit
        end
    end

    private
    def user_params
        params.require(:user).permit(
          :first_name, :last_name, :address, :email, :role, :password, :password_confirmation
        )
    end

end
