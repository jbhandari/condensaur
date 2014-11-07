class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    save_url
  end

  def show
    @url = Url.find(params[:id])
  end
  private

  def save_url
    if @url.save
      redirect_to url_path(@url)
    else
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
