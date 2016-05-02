class UserController < ApplicationController

  def all
    render json: User.all
  end

  def show
    id_user = params[:id]
        users = User.where(id: id_user)
        user = nil
        if (users.length > 0)
          user = users.first
        else
          raise "error"
        end
          render json: user
  end

  def new

  end

  def create
    user = User.new(get_params)
    saved = user.save
    if saved
      render json: user
    else
      render 'new'
    end
  end

  def edit
    id_users = params[:id]
    user = nil
    users = User.where(id: id_users)
      @user = users.first
      render :edit
  end

  def update
    id_users = params[:id]
    users = User.where(id: id_users)
    user = users.first
        user.update(get_params)
        render json: user
  end

  def delete
    id_user = params[:id]
    users = User.where(id: id_user)
    user = users.first
    user.destroy
      redirect_to :users_all
  end

  private
  def get_params
        params.require(:user).permit(:name,:gender,:email,:cpf,:age,:password,:password_confirmation)
    end
end
