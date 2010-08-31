class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.column :city, :string, {:length => 256, :null => false, :unique => true}
      t.column :site_domain_id, :integer
      t.column :subdomain, :string, {:length => 256, :null => false}
      t.column :site_status_id, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
