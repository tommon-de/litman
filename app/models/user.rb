class User < ApplicationRecord
  validates :name,:password,:email, length: { maximum: 255 }

end
