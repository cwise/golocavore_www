unless SiteStatus.exists?
  SiteStatus.create(:code => "A", :description => "Active")
  SiteStatus.create(:code => "X", :description => "Coming Soon")
end

unless SiteDomain.exists?
  SiteDomain.create(:code => "ca", :url => "golocavore.ca", :country => "Canada")
  SiteDomain.create(:code => "net", :url => "golocavore.net", :country => "United States")
end

unless Site.exists?
  Site.create(:city => "Ottawa", :site_status_id => SiteStatus.where(:code=>"A").first.id, :site_domain_id => SiteDomain.where(:code => 'ca').first.id, :subdomain => 'ottawa')
  Site.create(:city => "Kingston", :site_status_id => SiteStatus.where(:code=>"X").first.id, :site_domain_id => SiteDomain.where(:code => 'ca').first.id, :subdomain => 'kingston')
  Site.create(:city => "Toronto", :site_status_id => SiteStatus.where(:code=>"X").first.id, :site_domain_id => SiteDomain.where(:code => 'ca').first.id, :subdomain => 'toronto')
  Site.create(:city => "London", :site_status_id => SiteStatus.where(:code=>"X").first.id, :site_domain_id => SiteDomain.where(:code => 'ca').first.id, :subdomain => 'london')
end

