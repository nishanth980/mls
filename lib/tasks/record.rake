namespace :master do

  desc "creates all the records of master_table"
  task :create => :environment do
  @values = [ "mls_id", "mls_name","sale_type", "listing_status", "apn", "address", "suite", "street_no", "street_name", "city", "state", "zip", "sale_date", "sale_price", "concession_amount", "owner", "days_on_market", "original_listing_price","original_listing_date","current_listing_price","current_listing_date", "contract_date","financing_type","listing_status_date","public_remarks", "agent_remarks" ]
   
   @values.each do |i|    
    MasterTable.create(:name => "#{i}")
   end
  end
  end
