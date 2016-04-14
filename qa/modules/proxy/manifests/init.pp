class proxy {

  anchor { 'proxy::begin': } ->
  class { 'proxy::install': } ->
  class { 'proxy::configure': } ->
  class { 'proxy::service': } ->
  anchor { 'proxy::end': }

}
