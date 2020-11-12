module CostAnalyzer
  def calculate_cost(customer, order)
    cost = Order::FLAT_FEE * order.items.count
    if customer.unit_charge.present?
      cost += volume_cost(customer.unit_charge, order)
    end
    if customer.value_charge.present?
      cost += value_cost(customer.value_charge, order)
    end
    if customer.discount.present?
      discount_cost(customer.discount, order)
    end
    cost
  end

  def volume_cost(unit_charge, order)
    total = 0
    order.items.each do |item|
      total += item.height * item.width * item.length * unit_charge
    end
    total
  end

  def value_cost(value_charge, order)
    total = 0
    order.items.each do |item|
      total += item.value * value_charge
    end
    total
  end

  def discount_cost(discount, order)
    total = 0
    order.items.each do |item|
    end
    total
  end
end