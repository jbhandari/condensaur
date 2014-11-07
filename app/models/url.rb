class Url < ActiveRecord::Base
  before_create :create_unique_token

  validates :original_url, presence: true

  private

  def create_unique_token
    self.token = SecureRandom.hex(2)
  end
end
