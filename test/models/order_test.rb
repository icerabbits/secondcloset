require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test "empty" do
    o = Order.create([])
    assert_same(o.items, 0)
  end

  test "2 items" do

    sample = [
        {
            "name": "Box",
            "length": "3",
            "width": "7",
            "height": "5",
            "weight": "60",
            "value": "100"
        },
        {
            "name": "Sofa",
            "length": "50",
            "width": "70",
            "height": "20",
            "weight": "30",
            "value": "1000"
        }
    ]
    o = Order.create(sample)
    assert_same(o.items, 2)
  end
end
