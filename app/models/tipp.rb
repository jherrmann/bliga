class Tipp < ActiveRecord::Base
	belongs_to :user
	belongs_to :paarung
end
