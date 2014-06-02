require 'test_helper'

class KnoxModuleTest < Test::Unit::TestCase
  include ActiveMerchant::Billing::Integrations

  def test_notification_method
    assert_instance_of Knox::Notification, Knox.notification('name=cody')
  end
end
