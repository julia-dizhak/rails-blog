class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end  

  # create but does not save it
  def new
    @article = Article.new
  end

  def create
    # @article = Article.new(params[:article])
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # use strong params
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
