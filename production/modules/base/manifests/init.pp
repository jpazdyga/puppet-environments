class base {

  anchor { 'base::begin': } ~>
  class { 'base::install': } ->
  class { 'base::configure': } ->
  class { 'base::service': } ~>
  anchor { 'base::end': }

}
