class Api::PostsController < ApplicationController
   
    def index
        backward_posts = Post.all
        @posts = backward_posts.reverse
        render :index
    end

    def show
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)
        debugger
        @post.author_id = current_user.id
        if @post.save
            render :show
        else
            render @post.errors.full_messages, status: 401
        end
    end


    def destroy
        @post = current_user.posts.find_by(id: params[:id])
        # @post = Post.find_by(id: params[:id])
        # debugger
        if @post
            @post.destroy
            render :show
        else
            render ['Could not find post']
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :status, :body, :author_id)
    end

end