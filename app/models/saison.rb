class Saison < ActiveRecord::Base
	belongs_to :liga
	
	has_many :spieltag
end
