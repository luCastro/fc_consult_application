class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:update, :edit]

    def new

    end

    def create

    end

    def show
        @user = current_user
    end

    def edit
       @user = User.find params[:id]
    end

    def  update
        @user = User.find params[:id]

        if @user.update(user_params)

            redirect_to user_path(@user.id)
        else
            render :edit
        end
    end

    private
    
    def user_params
        params.require(:user).permit(
          :first_name, :last_name, :email, :role, :password, :password_confirmation
        )
    end

end
