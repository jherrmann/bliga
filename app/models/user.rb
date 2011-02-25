class User < ActiveRecord::Base
  has_many :tipp
  
  acts_as_authentic
end
