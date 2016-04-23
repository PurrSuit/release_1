class UserController < ApplicationController

  def all
    render json: User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(get_params)
    if @user.save
        render json: user
      else
        render action: :new
end

  end

  def edit

  end

  def update

  end

  def delete

  end

  private
  def get_params
        params.require(:user).permit(:nome,:email,:password)
    end
end
