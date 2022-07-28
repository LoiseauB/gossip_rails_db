class Gossip < ApplicationRecord
  belongs_to :user
  has_many :attributions
  has_many :tags, through: :attributions
end
