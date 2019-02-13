class Account < ApplicationRecord
    has_secure_password
    before_save { self.email.downcase! }
    validates :account_id, 
        format: { with: /\A[a-zA-Z0-9]/, message: "利用可能な文字列は英数字のみです." },
        length: { maximum: 255 },
        uniqueness: { case_sensitive: false }
    validates :email,
        email: true,
        length: { maximum: 255 },
        uniqueness: { case_sensitive: false },
        confirmation: true
    # validates :password
    #     length: { maximum: 255 }
    #     confirmation: true
        

end
