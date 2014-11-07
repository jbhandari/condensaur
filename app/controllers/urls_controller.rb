class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    save_url
  end

  private

  def url_params
    params.require(:url).permit().merge(
      original_url: build(params[:url][:original_url)
    )
  end

  def build(url)
    UrlBuilder.new(url)
  end
end
