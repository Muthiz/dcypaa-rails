module ApplicationHelper
  def title_maker(title)
    if title.is_a? String
      title + " | DCYPAA 2015"
    else
      "DCYPAA 2015"
    end
  end
  
  def thumbnail_to(image, thumbnail = image)
    #'<a class="th" href="'+ image_path(image) +'">'+ image_tag(thumbnail || image) +'</a>'.html_safe
    raw "<a class='th' href='"+ image_path(image) +"'>"+ image_tag(thumbnail || image) +"</a>"
  end
end
