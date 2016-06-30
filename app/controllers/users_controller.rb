class UsersController < ApplicationController
    def new
        @User = User.new
    end
    
    def create
        @User = User.new(user_params)
        if @User.save
            flash[:success] = "User was successfully created!"
            redirect_to @User
        else
            flash[:danger] = "User wasn't created!"
            render 'new'
        end
    end
    
    def show
        @User = User.find(params[:id])
    end
        
    private
        def user_params
            params.require(:user).permit(:name)
        end
end
