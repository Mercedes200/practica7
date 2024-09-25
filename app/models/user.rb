 # class User < ApplicationRecord
 # end
 class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "solo puede contener letras" }
  validates_presence_of :password, presence: true
  validates_length_of :password, is: 8
  validates_presence_of :email, presence: true
  validates_uniqueness_of :email
  validates_format_of :email, with: /@/
end
