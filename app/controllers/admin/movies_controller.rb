class Admin::MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to action: "show"
    else
      flash[:danger] = "登録に失敗しました"
      render 'new'
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to action: "show"
    else
      flash[:danger] = "登録に失敗しました"
      render 'edit'
    end
  end

  private
    def movie_params
      params.require(:movie).permit(:name, :year, :description,
                                   :image_url, :is_showing)
    end
end
