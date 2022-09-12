class UsersController < ApplicationController

  # GET /users or /users.json
  def index
    @users = User.all.order("created_at DESC")
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path 
    else
      render :new 
    end
  end
end

private

# Only allow a list of trusted parameters through.
def user_params
  params.require(:user).permit(:name, :age, :email, :image)
end
