class UserSession < Authlogic::Session::Base

def persisted?
  false
end
end