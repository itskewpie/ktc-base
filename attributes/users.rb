include_attribute "users"
#
# wheel (admins) get sudo by default
#
default[:authorization][:sudo][:groups]            = ["wheel"]
default[:authorization][:sudo][:passwordless]      = true
default[:authorization][:sudo][:include_sudoers_d] = true

# manage
default[:users][:manage_home] = true

# users cook sets defaults. We override
default[:accounts][:groups] = %w[
  wheel
]
