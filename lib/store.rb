class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_sell_mens_or_womens_apparel, on: :create

  def must_sell_mens_or_womens_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
  end
end