# config/routes.rb
Rails.application.routes.draw do
    resource :post do #Singular will automatically generate routes call posts controller
        member do
            get 'comments' #call method comments in class posts controller, endpoint /post/comments with request method get
        end
  
        collection do
            post 'bulk_upload' #call method bulk_upload in class posts controller, endpoint /post/bulk_upload with request method post
        end
    end
end