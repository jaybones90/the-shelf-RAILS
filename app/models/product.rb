class Product < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "650x650>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :order_items


end
