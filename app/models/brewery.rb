class Brewery < ActiveRecord::Base
    include RatingAverage
    extend TopItem

    validates :name, presence: true
    validates :year, numericality: { less_than_or_equal_to: ->(_) { Time.now.year} }

    scope :active, -> { where active:true }
    scope :retired, -> { where active:[nil,false] }

    has_many :beers, :dependent => :destroy
    has_many :ratings, :through => :beers

    def self.top(n)
        self.top_item(Brewery, n)
    end
end
