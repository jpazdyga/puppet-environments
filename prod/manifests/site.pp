$hostgroup = regsubst($clientcert, '-*\d+$', '')

node default {
  include base
}

node /^app(.*)$/ inherits base {
  include web
}

node /^proxy(.*)$/ inherits base {
  include proxy
}

node /^common(.*)$/ inherits base {
  include db
}
