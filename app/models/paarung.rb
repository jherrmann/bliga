class Paarung < ActiveRecord::Base
	belongs_to :spieltag
	belongs_to :verein, :foreign_key => 'heim'
	belongs_to :verein, :foreign_key => 'gast'
	
	has_many :tipp
end
