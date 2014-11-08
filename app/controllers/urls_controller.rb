class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

  def create
    @url = Url.find_or_create_by(url_params)
    save_url
  end

  def show
    @url = find_url
  end

  private

  def find_url
    Url.find_by(token: params[:id])
  end

  def save_url
    if @url.save
      render :change
    else
      flash[:error] = "Unsuccessful"
      render :new
    end
  end

  def url_params
    params.require(:url).permit().merge(
      original_url: build(params[:url][:original_url])
    )
  end

  def build(url)
    UrlBuilder.new(url).format
  end
end
