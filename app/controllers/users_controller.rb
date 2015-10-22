class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
    
    def create

        up = user_params;

        unless up[:password] == up[:password_confirmation]
            return redirect_to signup_url
        end

        @user = User.new(up)

        if @user.save
            session[:user_id] = @user.id
            redirect_to root_url
        else
            redirect_to signup_url
        end
    end
    
    def user_params
        params
            .require(:user)
            .permit(:email, :password, :password_confirmation)
    end
end
