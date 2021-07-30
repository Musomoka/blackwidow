class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
       @businesses = @user.businesses
    end
    
    
end

