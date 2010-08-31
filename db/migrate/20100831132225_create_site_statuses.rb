class CreateSiteStatuses < ActiveRecord::Migration
  def self.up
    create_table :site_statuses do |t|
      t.column :code, :string, {:length => 1, :null => false, :unique => true}
      t.column :description, :string, {:length => 256, :null => false, :unique => true}

      t.timestamps
    end
  end

  def self.down
    drop_table :site_statuses
  end
end
