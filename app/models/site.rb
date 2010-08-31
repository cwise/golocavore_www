class Site < ActiveRecord::Base
  belongs_to :site_status
  belongs_to :site_domain
  
  scope :active, where("site_status_id = (SELECT id FROM site_statuses WHERE code = 'A')")
  scope :planned, where("site_status_id = (SELECT id FROM site_statuses WHERE code = 'X')")
  
  def full_url
    "http://#{subdomain}.#{site_domain.url}"
  end
end
