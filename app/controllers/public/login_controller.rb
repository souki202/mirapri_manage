class Public::LoginController < ApplicationController
  def index
    @title = 'ログイン'
  end

  def complete
    user_id = params[:user_ids]
    password = params[:password]
    render :index
  end
end
