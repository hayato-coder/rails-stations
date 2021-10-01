class MoviesController < ApplicationController
  def index
    @movies = Movie.search(params[:search], params[:status])
  end
end
