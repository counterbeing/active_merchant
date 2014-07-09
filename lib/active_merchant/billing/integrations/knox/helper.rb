module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Knox
        class Helper < ActiveMerchant::Billing::Integrations::Helper

          mapping :account, 'api_key'
          mapping :amount, 'amount'
          # mapping :order, 'order'
          # mapping :customer, :first_name => 'first_name',
          #                    :last_name  => 'last_name',
          #                    :email      => '',
          #                    :phone      => ''

          # mapping :billing_address, :city     => 'city',
          #                           :address1 => '',
          #                           :address2 => '',
          #                           :state    => '',
          #                           :zip      => '',
          #                           :country  => ''

          mapping :notify_url, 'notify_url'
          mapping :return_url, 'redirect_url'
          mapping :cancel_return_url, 'cancel_url'
          # mapping :description, ''
          # mapping :tax, ''
          # mapping :shipping, ''
        end
      end
    end
  end
end
