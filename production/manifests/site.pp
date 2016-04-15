### This is a main configuration file. We can route the configuration to the hosts here.
#

### Default host definition
#
node default inherits basenode{
}

### Basenode definition
#
node basenode {
  include base
}

### This a name based assignement. It could be done otherwise or skipped and hardcoded. Leaving that as is for demo purposes.
#

node /^app(.*)$/ inherits basenode {
  include web
}

node /^proxy(.*)$/ inherits basenode {
  include proxy
}

node /^common(.*)$/ inherits basenode {
  include db
}
