class ApplicationController < ActionController::Base
  # before_action :switch_tenant

  # def switch_tenant
  #   subdomain = request.subdomain

  #   Apartment::Tenant.switch!(subdomain) if subdomain.present?
  # end
end
