class CreateInformation < ActiveRecord::Migration
  def change
  create_table :information do |t|
      t.string :mls_id
      t.string  :mls_name
      t.string  :sale_type
      t.string  :listing_status
      t.string  :apn
      t.string  :address
      t.string  :suite
      t.string  :street
      t.string  :street_name
      t.string  :city
      t.string  :state
      t.string  :zip
      t.string  :sale_date
      t.string :sale_price
      t.string :concession_amount
      t.string  :owner
      t.string  :days_on_market
      t.string :original_listing_price
      t.string :original_listing_date
      t.string :current_listing_price
      t.string :current_listing_date
      t.string :contact_date
      t.string  :financing_type
      t.string :listing_status_date
      t.string :public_remarks
      t.string :agent_remarks
      t.string :user_id
      t.string :exel_id

    end
  end
end
