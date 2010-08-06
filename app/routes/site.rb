class Main  
  
  get '/' do
    haml :'pages/home'
  end     
  
  get '/:path' do
    path = params[:path]
    if File.exists? root_path("app/views/pages/#{path}.haml")
      haml :"pages/#{path}"    
    else
      haml :'pages/404'   
    end
  end   
  
  error 404 do 
    haml :'pages/404' 
  end
  
end
