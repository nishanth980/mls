class CreateMasterTables < ActiveRecord::Migration
  def change
    create_table :master_tables do |t|
      t.string :name
      t.timestamps
    end
  end
end
