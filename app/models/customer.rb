class Customer < ApplicationRecord
  has_many :orders
  serialize :discount
end
