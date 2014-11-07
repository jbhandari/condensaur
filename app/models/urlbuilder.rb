class UrlBuilder
  attr_reader :url

  def initialize(url)
    @url = url.strip
  end

  def format_link
    if missing_protocol
      url.prepend("http://")
    end
    url
  end

  private

  def missing_protocol
    missing_http? && missing_https?
  end

  def missing_http?
    !url.starts_with?("http://")
  end

  def missing_https?
    !url.starts_with?("https://")
  end
end
