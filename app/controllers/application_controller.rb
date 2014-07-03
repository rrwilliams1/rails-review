class ApplicationController < ActionController::Base
   
  def new
    
  end
 
  def create
    g = Gif2.new
    g.name = params['name']
    g.caption = params['caption']
    g.save
    redirect_to "/gif/#{ g.id }"
  end

  def show
    @gif = Gif2.find_by_id(params['id'])     
    render 'show'
  end
    
  def edit
     @gif = Gif2.find_by_id(params['id'])
     @name = Gif2.find_by_name(params['name'])
     @caption = Gif2.find_by_caption(params['caption'])
  end
 
    
   
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
