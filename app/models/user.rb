class User < ApplicationRecord
  enum status: { active: 0, inactive: 1}

  validates :name,:password,:email, length: { maximum: 255 }
  validates :status, inclusion: {in: %w(active inactive)}

  has_many :articles
end
