class ArticlesController < ApplicationController
  before_action :set_article, except: [:index, :new, :create]

  def index
    @articles = Article.all
  end

  def show
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end  

  # create but does not save it
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private

  # use strong params
  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path  
  end
end
