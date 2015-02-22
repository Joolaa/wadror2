class Style < ActiveRecord::Base
  include RatingAverage
  extend TopItem

  has_many :beers
  has_many :ratings, :through => :beers

  def to_s
    name
  end

  def self.top(n)
    self.top_item(Style, n)
  end
end
