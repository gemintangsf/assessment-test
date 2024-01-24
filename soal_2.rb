# app/controllers/posts_controller.rb
class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    
    # Index (GET /posts): Display a list of all posts.
    def index
        @posts = Post.all
    end
    
    # Show (GET /posts/:id): Display a specific post.
    def show
        
    end
    
    # New (GET /posts/new): Display a form to create a new post.
    def new
        @post = Post.new
    end
  
    # Create (POST /posts): Create a new post.    
    def create
        @post = Post.new(post_params)
    
        if @post.save
            redirect_to @post, notice: 'Post was successfully created.'
        else
            render :new
        end
    end
  
    # Edit (GET /posts/:id/edit): Display a form to edit an existing post.
    def edit
        
    end
    
    # Update (PATCH /posts/:id): Update an existing post.
    def update
        if @post.update(post_params)
            redirect_to @post, notice: 'Post was successfully updated.'
        else
            render :edit
        end
    end
    
    # Destroy (DELETE /posts/:id): Delete a specific post.
    def destroy
        # Action for deleting a specific post
        @post.destroy
        redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end
  
    def comments
        # Member action for displaying comments for a specific post
    end
  
    def bulk_upload
        # Collection action for handling bulk upload of posts
    end
  
    private
  
    def set_post
        @post = Post.find(params[:id])
    end
  
    def post_params
        params.require(:post).permit(:blabla, :blabla)
    end
end
  