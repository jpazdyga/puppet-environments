$hostgroup = regsubst($clientcert, '-*\d+$', '')

node default inherits basenode{
}

node basenode {
  include base
}

node /^app(.*)$/ inherits basenode {
  include web
}

node /^proxy(.*)$/ inherits basenode {
  include proxy
}

node /^common(.*)$/ inherits basenode {
  include db
}
