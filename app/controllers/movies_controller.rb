class MoviesController < ApplicationController
  def index
    @movies = Movie.search(params[:search], params[:status])
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
