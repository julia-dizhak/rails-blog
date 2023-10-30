class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        # we send the user back to the original article
        redirect_to article_path(@article)
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)        
        end
        
end
