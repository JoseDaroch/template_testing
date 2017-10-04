class SongsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def show
    @user = User.find(params[:id])
    @song = @user.songs.paginate(page: params[:page])
  end

  def create
    @song = current_user.song.build(song_params)
    if @song.save
      redirect_to root_url
    else
      render '/'
    end
  end

  def destroy
  end

  private

    def song_params
      params.require(:song).permit(:nombre, :genero, :duracion)
    end
end
