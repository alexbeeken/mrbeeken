# This migration comes from solidus_braintree (originally 20150910170527)
class AddDataToCreditCard < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_credit_cards, :data, :text
  end
end
