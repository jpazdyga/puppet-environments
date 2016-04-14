$hostgroup = regsubst($clientcert, '-*\d+$', '')

node default inherits basenode{
}

node basenode {
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
