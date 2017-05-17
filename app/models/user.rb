class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # 關聯 #
  has_many :orders


  # 檢查 is_admin 的 boolean 值
  def admin?
    is_admin
  end

end
