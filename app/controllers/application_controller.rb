class ApplicationController < ActionController::Base

  def show
    @gifs = Ideas2.find_by_id(params['id'])     
      render 'show'
    end
  
  def new
  end
 
  def create
        g = Gif.new
        g.name = params['name']
        g.caption = params ['caption']
        g.save
        redirect_to "/gifs/#{ g.id }"
  end
#         g.url = params['url']
#         g.save
#         redirect_to "/gifs/#{ f.id }"
#       end
#         def first
#         @url = "http://f.cl.ly/items/0R0D3B18221l0H242F3L/tumblr_mbbxc9DUdK1rnvwt1.gif"
#         @caption = "Overwhelmed"
#         render 'show'
#         end

#         def second
#         @url = "http://38.media.tumblr.com/2553cfa19ab9b6b6e8fdb4575a90b236/tumblr_mtrd39peE11s8uyj8o1_400.gif"
#         @caption = "Exhausted"
#         render 'show'
#         end
      
#         def third
#         @url = "http://a.gifb.in/022012/1329246321_pug_ignores_master_when_hes_away.gif" 
#         @caption = "Ignored" 
#         end

#   def transformers
#         @gif = Gif.find_by_id (params['id'])
#           if @gif==nil
#              @gif = Gif.find_by_id (1)
#           end
# #       @caption = "Overwhelmed"
#     render 'transformers'
#         end
    
    
    
   
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
