class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :style

  validates :name, presence: true
  validates :abv, numericality: { greater_than: 0}

  def brewery_name
    brewery.name
  end

  def style_name
    style.name
  end
end
