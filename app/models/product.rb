class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  MONEY_REGEX = /\A\d+(?:\.\d{0,2})?\z/

  validates_presence_of :title, :description
  validates :price, :presence => true,
            :numericality => true,
            :format => { :with => MONEY_REGEX }

  def average_rating
  	self.reviews.average(:rating).to_f
  end
end
