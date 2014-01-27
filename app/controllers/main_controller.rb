class MainController < ApplicationController
  def index
    @events = Event.find(:all, :order => "id desc", :limit => 2).reverse
  end

  def links
  end

  def events
  end
  
  def contact
  end
  
  def hotel
  end
  
  def info
  end
end
