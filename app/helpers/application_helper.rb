module ApplicationHelper
  
  def my_profile_nav_link
    content_tag :a do
      link_to "MY PROFILE", profile_path(current_user.id)      
    end    
  end

  def edit_profile_nav_link
    content_tag :a do
      link_to "EDIT PROFILE", edit_profile_path(current_user.id)      
    end    
  end

  def claimed_jobs_nav_link
    content_tag :a do
      link_to "CLAIMED JOBS", claimed_jobs_path     
    end    
  end  

  def create_and_find_jobs_nav_link
    content_tag :a do
      link_to "CREATE / FIND JOBS", find_jobs_path    
    end    
  end  

  def all_boats_nav_link
    content_tag :a do
      link_to "All BOATS", boats_path     
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

  
  def h1helper(title)
    content_tag :h1, title 
  end
  def h2helper(title)
    content_tag :h2, title 
  end
  def h3helper(title)
    content_tag :h3, title 
  end
  def h4helper(title)
    content_tag :h4, title 
  end
  def phelper(body)
    content_tag :p, body 
  end
 





end
