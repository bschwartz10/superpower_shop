class Category < ActiveRecord::Base
  has_many :powers

  validates :slug, presence: true
  before_validation :set_slug

  def to_param
    slug
  end

  def set_slug
    self.slug = URI.escape(self.title)
  end
end
