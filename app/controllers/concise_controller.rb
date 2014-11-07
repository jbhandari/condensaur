class ConciseController < ApplicationController
  def show
    original_url = Url.find_by(token: params[:id])
    redirect_to original_url.original_url
  end
end
