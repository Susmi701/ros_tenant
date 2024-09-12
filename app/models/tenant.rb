class Tenant < ApplicationRecord
  after_create :create_tenant

  private

  def create_tenant
    Apartment::Tenant.create(self.subdomain)
  end
  # def create_tenant
  #   Apartment::Tenant.create(self.subdomain)
  #   command = "DB=#{self.subdomain} rails db:migrate"
  #   system(command)
  # end

end
