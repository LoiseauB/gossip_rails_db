class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  has_many :sendings
  has_many :recipients, class_name: "User", through: :sendings
end
