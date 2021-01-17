class Admin::UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_user_url(@user) , notice: "ユーザー「#{}」を登録しました"
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  

  def edit

  end

  def show
  end

  def index
  end
end