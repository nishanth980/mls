class CreateInformationErrors < ActiveRecord::Migration
  def change
    create_table :information_errors do |t|
      t.text :mls_id
      t.text  :mls_name
      t.text  :sale_type
      t.text  :listing_status
      t.text  :apn
      t.text  :address
      t.text  :suite
      t.text  :street
      t.text  :street_name
      t.text  :city
      t.text  :state
      t.text  :zip
      t.text  :sale_date
      t.text :sale_price
      t.text :concession_amount
      t.text  :owner
      t.text  :days_on_market
      t.text :original_listing_price
      t.text :original_listing_date
      t.text :current_listing_price
      t.text :current_listing_date
      t.text :contact_date
      t.text  :financing_type
      t.text :listing_status_date
      t.text :public_remarks
      t.text :agent_remarks
      t.text   :comments
      t.text :exel_id
      t.text :user_id
      t.text :created_at
    end
  end
end
