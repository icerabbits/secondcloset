class Order < ApplicationRecord
  has_many :items

  FLAT_FEE = 20

  def initialize(items)
    return unless items.present?
    item_count = 0
    items.each do |i|
      self.items.create(name: i[:name], length: i[:length].to_f, width: i[:width].to_f, height: i[:height].to_f,
                        weight: i[:weight].to_f, value: i[:value].to_f, item_number: item_count+1)
      item_count += 1
    end
    self.customer.udpate(item_stored: item_count)
  end
end
