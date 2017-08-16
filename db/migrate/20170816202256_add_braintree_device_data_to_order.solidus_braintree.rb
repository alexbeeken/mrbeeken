# This migration comes from solidus_braintree (originally 20160426221931)
class AddBraintreeDeviceDataToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_orders, :braintree_device_data, :text
  end
end
