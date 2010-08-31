class CreateSiteDomains < ActiveRecord::Migration
  def self.up
    create_table :site_domains do |t|
      t.column :code, :string, {:length => 3, :null => false, :unique => true}
      t.column :url, :string, {:length => 256, :null => false}
      t.column :country, :string, {:length => 256, :null => false, :unique => true}

      t.timestamps
    end
  end

  def self.down
    drop_table :site_domains
  end
end
