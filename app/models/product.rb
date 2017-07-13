class Product < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "650x650>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :category, :presence => true
  has_many :order_items

  scope :category_search, -> (cat_param) { where("category like ?", "%#{cat_param}%")}


  def self.categories
    categories = []
    Product.all.each do |product|
      categories.push(product.category)
    end
    categories.uniq
  end


end
