class LoginController < ApplicationController
  def index
    @title = 'ログイン'
  end

  def complete
    @title = 'ログイン'
    render :index
  end
end
