class Tag < ApplicationRecord
  has_many :attributions
  has_many :gossips, through: :attributions
end
