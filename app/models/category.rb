class Category < ActiveRecord::Base
  has_many :powers

  validates :slug, presence: true

  def to_param
    slug
  end
end
