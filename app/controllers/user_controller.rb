class UserController < ApplicationController

  skip_before_filter  :verify_authenticity_token

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
          raise "ERROR: No user to be shown"
        end
          render json: user
  end

  def new
  end

  def logInConfirm
    email_user = params[:email]
    password_user = params[:password]
    user = User.where(email: email_user)

    if !user
      raise "ERROR: User not found"
    else
      if password_user == user.password
          render json: user
      end
    end
  end

  def create
    user = User.new(get_params)
    saved = user.save
    if saved
      session[:user_id] = user.id
      render json: user
      raise "success!"
    else
      render 'new'
      raise "fail!"
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
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
