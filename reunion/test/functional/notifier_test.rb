require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received(orders(one))
    assert_equal "Reunion store Order Confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Meal Plan A", mail.body.encoded
  end

  test "order_shipped" do
    mail = Notifier.order_shipped(orders(one))
    assert_equal "Your reunion orders are complete ", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Meal Plan A", mail.body.encoded
  end

end
