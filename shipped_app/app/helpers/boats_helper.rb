module BoatsHelper

  def h1helper(title)
    content_tag :h1, title 
  end

  def h2helper(title)
    content_tag :h2, title 
  end

  def h3helper(title)
    content_tag :h3, title 
  end

  def phelper(body)
    content_tag :p, body 
  end

end
