class ArtistsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def show
    @user = User.find(params[:id])
    @artist = @user.artists.paginate(page: params[:page])
  end

  def create
    @artist = current_user.artist.build(artist_params)
    if @artist.save
      redirect_to root_url
    else
      render '/'
    end
  end

  def destroy
  end

  private

    def artist_params
      params.require(:artist).permit(:nombre, :descripcion, :genero, :lugar_origen, :periodo_inicio, :periodo_fin, :integrantes)
    end
end
