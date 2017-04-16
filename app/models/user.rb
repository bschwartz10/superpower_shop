class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true,
                    uniqueness: true
  enum role: %w(default admin)
  has_many :orders
end
