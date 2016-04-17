class db {

  anchor { 'db::begin': } ~>
  class { 'db::install': } ->
  class { 'db::configure': } ->
  class { 'db::service': } ~>
  anchor { 'db::end': }

}
