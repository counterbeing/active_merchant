require File.dirname(__FILE__) + '/knox/helper.rb'
require File.dirname(__FILE__) + '/knox/notification.rb'

module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Knox
        
        def self.service_url 
          'https://knoxpayments.com/newflow/index.php?recurring=ot' 
        end

        def self.notification(post, options = {})
          Notification.new(post)
        end
        
        def self.return(query_string, options = {})
          Return.new(query_string)
        end

      end
    end
  end
end
