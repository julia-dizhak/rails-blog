class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        # we send the user back to the original article
        redirect_to article_path(@article)
    end

    private
        def comment_params
            # We also have to permit the :status key as part of the strong parameter
            params.require(:comment).permit(:commenter, :body, :status)        
        end
        
end
