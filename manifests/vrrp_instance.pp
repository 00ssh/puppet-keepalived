define keepalived::vrrp_instance (
  Optional[String] $use_vmac = undef,
  Optional[Integer[2, 3]] $version = undef,
  Optional[Boolean] $vmac_xmit_base = undef,
  Optional[Boolean] $native_ipv6 = undef,
  Optional[Enum["MASTER", "BACKUP"]] $state = undef,
  Optional[String] $interface = undef,
  Optional[Boolean] $accept = undef,
  Optional[Boolean] $no_accept = undef,
  Optional[Array[String]] $track_interface = undef,
  Optional[Array[String]] $track_script = undef,
  Optional[String] $dont_track_primary = undef,
  Optional[String] $mcast_src_ip = undef,
  Optional[String] $unicast_src_ip = undef,
  Optional[Array[String]] $unicast_peer = undef,
  Optional[Integer[1]] $garp_master_delay = undef,
  Optional[Integer[1]] $garp_master_repeat = undef,
  Optional[Integer[1]] $garp_lower_priority_delay = undef,
  Optional[Integer[1]] $garp_lower_priority_repeat = undef,
  Optional[Integer[1]] $garp_master_refresh = undef,
  Optional[Integer[1]] $garp_master_refresh_repeat = undef,
  Integer[1, 255] $virtual_router_id,
  Optional[Integer[-1, 255]] $priority = undef,
  Optional[Variant[Integer, Float]] $advert_int = undef,
  Optional[Enum['yes', 'no']] $lower_prio_no_advert = undef,
  Optional[Enum['yes', 'no']] $higher_prio_send_advert = undef,
  Optional[Keepalived::Vrrp::Instance::Authentication] $authentication = undef,
  Optional[Array[String]] $virtual_ipaddress = undef,
  Optional[Array[String]] $virtual_ipaddress_excluded = undef,
  Optional[Boolean] $promote_secondaries = undef,
  Optional[Array[String]] $virtual_routes = undef,
  Optional[Array[String]] $virtual_rules = undef,
  Optional[Boolean] $nopreempt = undef,
  Optional[Integer[0]] $preempt_delay = undef,
  Optional[Enum['yes', 'no']] $strict_mode = undef,
  Optional[Integer[0, 4]] $debug = undef,
  Optional[String] $notify_master = undef,
  Optional[String] $notify_backup = undef,
  Optional[String] $notify_fault = undef,
  Optional[String] $notify_stop = undef,
  Optional[String] $notify = undef,
  Optional[Boolean] $smtp_alert = undef,
  Enum["present", "absent"] $ensure = "present"
) {
  keepalived::config_block {"vrrp_instance_${name}":
    order => "25",
    block_id => "vrrp_instance",
    block_name => $name,
    opts => {
      "use_vmac" => $use_vmac,
      "version" => $version,
      "vmac_xmit_base" => $vmac_xmit_base,
      "native_ipv6" => $native_ipv6,
      "state" => $state,
      "interface" => $interface,
      "accept" => $accept,
      "no_accept" => $no_accept,
      "track_interface" => $track_interface,
      "track_script" => $track_script,
      "dont_track_primary" => $dont_track_primary,
      "mcast_src_ip" => $mcast_src_ip,
      "unicast_src_ip" => $unicast_src_ip,
      "unicast_peer" => $unicast_peer,
      "garp_master_delay" => $garp_master_delay,
      "garp_master_repeat" => $garp_master_repeat,
      "garp_lower_priority_delay" => $garp_lower_priority_delay,
      "garp_lower_priority_repeat" => $garp_lower_priority_repeat,
      "garp_master_refresh" => $garp_master_refresh,
      "garp_master_refresh_repeat" => $garp_master_refresh_repeat,
      "virtual_router_id" => $virtual_router_id,
      "priority" => $priority,
      "advert_int" => $advert_int,
      "lower_prio_no_advert" => $lower_prio_no_advert,
      "higher_prio_send_advert" => $higher_prio_send_advert,
      "authentication" => $authentication,
      "virtual_ipaddress" => $virtual_ipaddress,
      "virtual_ipaddress_excluded" => $virtual_ipaddress_excluded,
      "promote_secondaries" => $promote_secondaries,
      "virtual_routes" => $virtual_routes,
      "virtual_rules" => $virtual_rules,
      "nopreempt" => $nopreempt,
      "preempt_delay" => $preempt_delay,
      "strict_mode" => $strict_mode,
      "debug" => $debug,
      "notify_master" => $notify_master,
      "notify_backup" => $notify_backup,
      "notify_fault" => $notify_fault,
      "notify_stop" => $notify_stop,
      "notify" => $notify,
      "smtp_alert" => $smtp_alert
    },
    ensure => $ensure
  }
}
