class UsersController < ApplicationController
  def new
  
  end

  def create
      @user = User.new(user_params)
      @user.profile = Profile.new
      
      if @user.save
        # Handle a successful save.
        
        flash.now[:success] = 'User Created Successfully'
        log_in(@user)
        redirect_to(root_path)
      else
        render 'new'
      end
    end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
    #
  end
end