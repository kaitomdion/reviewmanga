class Product < ApplicationRecord
  belongs_to :genre
  has_many :reviews
  
  def self.search(search)
    return Product.all unless search
    Product.where(['title LIKE ? OR author LIKE ?', "%#{search}%", "%#{search}%"])
  end

end
