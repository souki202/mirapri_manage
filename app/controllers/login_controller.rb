class LoginController < ApplicationController
  def index
    @title = 'ログイン'
  end

  def complete
    @title = 'ログイン'
    account = Account.find_by(account_id: params[:login][:account_id].downcase)
    if account && account.authenticate(params[:login][:password])
      login account
      redirect_to controller: :top, action: :index
    else
      flash.now[:danger] = 'ユーザIDまたはパスワードが正しくありません.'
      render :index
    end
  end

  def logout
    render :index
  end
end
