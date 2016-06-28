class User < ActiveRecord::Base
  has_many :group_users
  has_many :groups, through: :group_users

  def self.create_with_identity
  end
end
