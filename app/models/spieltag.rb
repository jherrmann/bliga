class Spieltag < ActiveRecord::Base
	belongs_to :saison
	
	has_many :paarung
end
