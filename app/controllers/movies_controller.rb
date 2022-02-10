class MoviesController < ApplicationController

  def index
    @movie = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
    #name = User.pluck(:name)
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end


  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    mov = movie.update(movie_params)
    if mov
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    mov_dest = Movie.find(params[:id])
    mov_dest.destroy
    if mov_dest
      redirect_to root_path
    end
  end

  

  private

  def movie_params
    params.require(:movie).permit(:title, :director, :release, :storyline)
  end
  
end
