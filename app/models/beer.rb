class Beer < ActiveRecord::Base
  include RatingAverage
  extend TopItem

  belongs_to :style
  belongs_to :brewery, touch: true
  has_many :ratings, dependent: :destroy
  has_many :raters, -> { uniq }, through: :ratings, source: :user

  validates :name, presence: true
  validates :style, presence: true

  def to_s
    "#{name} #{brewery.name}"
  end

  def self.top(n)
      self.top_item(Beer, n)
  end
end
