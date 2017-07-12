class User < ApplicationRecord
  has_one :account
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :save_account

  def save_account
    account = Account.create(:user_id => self.id)
    self.account_id = account.id
  end



end
