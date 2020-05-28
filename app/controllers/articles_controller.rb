class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
    @posts = Post.all
  end
  
  def contact
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new 
    @article = Article.new
  end
 
  def create
    @article = Article.new(params.require(:article).permit(:title, :text))
 
    @article.save
    redirect_to @article
  end


  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
