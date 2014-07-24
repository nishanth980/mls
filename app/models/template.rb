class Template < ActiveRecord::Base
  attr_accessible :mls_id,:mls_name,:sale_type,:listing_status,:apn,:address,:suite,:street,:street_name,:city,:state,:zip,:sale_date,:sale_price,:concession_amount,:owner,:days_on_market,:original_listing_price,:original_listing_date,:current_listing_price,:current_listing_date,:contact_date,:financing_type,:listing_status_date,:public_remarks,:agent_remarks,:user_id,:exel_id


belongs_to :user


end
