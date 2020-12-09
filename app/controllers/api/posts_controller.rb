class Api::PostsController < ApplicationController

    def index
        # @pagy, @posts = pagy((Post.all).reverse, items: 10)
        @pagy, @posts = pagy(Post.all, items: 10)
        @trying = pagy_metadata(@pagy)
        # backward_posts = Post.all
        # @posts = backward_posts.reverse
        render :index
        # render json: { data: @posts,
        #        pagy: pagy_metadata(@pagy) }
    end

    def show
        @post = Post.find(params[:id])
        render :show
    end

    def create
        @post = Post.new(post_params)
        @post.author_id = current_user.id
        if @post.save
            render :show
        else
            render @post.errors.full_messages, status: 401
        end
    end


    def destroy
        @post = current_user.posts.find_by(id: params[:id])
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