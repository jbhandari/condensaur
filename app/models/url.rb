class Url < ActiveRecord::Base
  before_create :create_unique_token

  validates :original_url, uniqueness: true, presence: true

  def to_param
    token
  end
  private

  def create_unique_token
    self.token = SecureRandom.hex(2)
    while Url.exists?(token: token)
      self.token = SecureRandom.hex(2)
    end
  end
end
