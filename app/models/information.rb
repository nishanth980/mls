class Information < ActiveRecord::Base
   attr_accessible :mls_id, :mls_name,:sale_type, :listing_status, :apn, :address, :suite, :street, :street_name, :city, :state, :zip, :sale_date, :sale_price, :concession_amount, :owner, :days_on_market, :original_listing_price,:original_listing_date,:current_listing_price,:current_listing_date, :contact_date,:financing_type,:listing_status_date,:public_remarks, :agent_remarks, :user_id, :exel_id

belongs_to :user

     def self.to_csv(options = {})
    exclude_columns = ["id","user_id", "exel_id"]
    @orignal_headers = column_names - exclude_columns

      CSV.generate(options) do |csv|
      csv << @orignal_headers
       @arr = Information.select("mls_id,mls_name,sale_type,listing_status,apn,address,suite,street,street_name,city,state,zip,sale_date,sale_price,concession_amount,owner,days_on_market,original_listing_price,original_listing_date,current_listing_price,current_listing_date,contact_date,financing_type,listing_status_date,public_remarks,agent_remarks")
      debugger
      
      all.each do |information|
        csv << information.attributes.values_at(*@orignal_headers )        
      end
    end
    end
end
