class CreateMasterTables < ActiveRecord::Migration
  def change
    create_table :master_tables do |t|
      t.string :name
      t.string :mandidatory_fields
      t.timestamps
    end
  end
end
