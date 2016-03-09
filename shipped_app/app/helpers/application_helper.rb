module ApplicationHelper
  
  def my_profile_nav_link
    content_tag :a do
      link_to "MY PROFILE", profile_path(:user_id)      
    end    
  end

  def jobs_nav_link
    content_tag :a do
      link_to "ALL JOBS", jobs_path      
    end    
  end  

  def boats_nav_link
    content_tag :a do
      link_to "BOATS", boats_path     
    end    
  end

  def sign_up_nav_link
    content_tag :a do
      link_to "SIGN UP", new_user_registration_path      
    end    
  end  

  def log_in_nav_link
    content_tag :a do
      link_to "LOG IN", new_user_session_path     
    end    
  end
  
  def log_out_nav_link
    content_tag :a do
      link_to "LOG OUT", destroy_user_session_path, method: :delete     
    end    
  end





end
