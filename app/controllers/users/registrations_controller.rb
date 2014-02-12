class Users::RegistrationsController < Devise::RegistrationsController

  def create    
  	super    
  	if resource.persisted?      
  		track_event "Signed up"
  	end  
  end

end