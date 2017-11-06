class ntp::service(
  String $service_ensure      = $ntp::service_ensure,
  String $service_name        = $ntp::service_name,
  Boolean $service_enable     = $ntp::service_enable,
  Boolean $service_hasstatus  = $ntp::service_hasstatus,
  Boolean $service_hasrestart = $ntp::service_hasrestart,
) {
  service {'ntp':
    ensure     => $service_ensure,
    enable     => $service_enable,
    name       => $service_name, 
    status     => $service_hasstatus,
    hasrestart => $service_hasrestart,
  }

}
