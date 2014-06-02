require 'test_helper'

class KnoxNotificationTest < Test::Unit::TestCase
  include ActiveMerchant::Billing::Integrations

  def setup
    @knox = Knox::Notification.new(http_raw_data)
  end

  def test_accessors
    assert @knox.complete?
    assert_equal "", @knox.status
    assert_equal "", @knox.transaction_id
    assert_equal "", @knox.item_id
    assert_equal "", @knox.gross
    assert_equal "", @knox.currency
    assert_equal "", @knox.received_at
    assert @knox.test?
  end

  def test_compositions
    assert_equal Money.new(3166, 'USD'), @knox.amount
  end

  # Replace with real successful acknowledgement code
  def test_acknowledgement

  end

  def test_send_acknowledgement
  end

  def test_respond_to_acknowledge
    assert @knox.respond_to?(:acknowledge)
  end

  private
  def http_raw_data
    ""
  end
end
