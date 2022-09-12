class User < ApplicationRecord
  mount_uploader :image, AvatarUploader
  validates :name, :email, :age, presence: true  
end
