class Power < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, :numericality => { :greater_than => 0 }
  belongs_to :category
  has_many :order_powers
  has_many :orders, through: :order_powers
  has_attached_file :image, styles: {medium: "560x315", thumb: "304x171"},
    default_url: "/images/default.jpg"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
