class Tag < ApplicationRecord

	belongs_to :jointabletag, required: false
	has_many :gossips, through: :jointabletags

end
