class User < ApplicationRecord
  validates :name,:password,:email, length: { maximum: 255 }
  validates :status, inclusion: { in: [0,1]}

end
