class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #start Mixpanel integration 
  around_filter :append_event_tracking_tags

  def mixpanel_distinct_id
  	if current_user
      current_user.id
    end
  end

  def mixpanel_name_tag
    if current_user
  	 current_user.id && current_user.email
    end
  end
  #end

end
