class Gossip < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :jointabletag, required: false
	has_many :tags, through: :jointabletags
end
