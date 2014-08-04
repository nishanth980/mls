namespace :master_mand do

  desc "creates all the records of master_table"
  task :create => :environment do
   o=MasterTable.find(1)
   o.update_attributes(mandidatory_fields: "*")   
   
   o=MasterTable.find(2)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(3)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(4)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(6)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(7)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(8)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(9)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(10)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(11)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(12)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(13)
   o.update_attributes(mandidatory_fields: "*")

   o=MasterTable.find(14)
   o.update_attributes(mandidatory_fields: "*")
  end
  end
  