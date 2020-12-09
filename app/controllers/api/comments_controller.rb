class Api::CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            render :show
        else
            render json: @comment.errors.full_messages
        end
    end

    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def index
        post = Post.find(params[:post_id])
        @comments = post.comments
        render :index
    end

    def destroy
        @comment = current_user.comments.find_by(id: params[:id])
        if @comment
            @comment.destroy
            render :show
        else
            render ['Could not find comment']
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:body, :post_id, :author_id)
    end

end