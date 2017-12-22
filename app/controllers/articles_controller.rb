class ArticlesController < ApplicationController


  def index

    @articles = Article.all

  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(secure_params)
      redirect_to @article
    else
      render 'edit'
    end

  end

  def new
    @article = Article.new
  end

  def create

    @article = Article.create(secure_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  private
  def secure_params
    params.require(:article).permit(:name,:text)
  end


end
