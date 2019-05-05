class Game < ApplicationRecord
  belongs_to :publisher
  has_many :orders
  has_many :cart_items
  has_many_attached :images

  def owner
    # Returns the ID of the user that created this Game.
    publisher.user.id
  end

  def price_to_decimal
    price / 100.0
  end

  def price_to_string
    '$' + price_to_decimal.to_s
  end
end
