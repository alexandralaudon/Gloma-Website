class ArticlesController < ApplicationController
  before_action :ensure_current_user

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "#{@article.title} was saved!"
      redirect_to articles_path
    else
      flash[:danger] = 'Uh-oh, this did not work.  Did you enter all the correct fields?'
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
    @categories = @article.categories
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    flash[:notice] = "Article: '#{article}' was deleted from the database"
    redirect_to articles_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :link, :label_order, :category, :blurb)
  end

end
