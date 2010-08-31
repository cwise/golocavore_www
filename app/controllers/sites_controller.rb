class SitesController < ApplicationController
  def index
    @active_sites=Site.active
    @planned_sites=Site.planned
  end
end
