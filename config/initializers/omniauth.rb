OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'a6hNc67zWdHsRFH2aWjW2A', 'I9uopFdtjj1c1PWWRPhtUfXdmOSzN7OViAykNWkX1fg'
  provider :linkedin, 'ravn9942oihj', 'BYorkYp0ZoYCSMcH'
  provider :facebook, '604857779565215', '60736b07d14a85eef21372fa4280fcc2'
end