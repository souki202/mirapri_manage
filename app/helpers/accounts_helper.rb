module AccountsHelper
    # 渡されたユーザーでログインする
    def login(account)
        session[:account_id] = account.id
    end

    # 現在ログインしているユーザーを返す (ユーザーがログイン中の場合のみ)
    def current_account
        @current_account ||= Account.find_by(id: session[:account_id])
    end

    # ユーザーがログインしていればtrue、その他ならfalseを返す
    def logged_in?
        !current_account.nil?
    end
end
