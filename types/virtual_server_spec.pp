type Keepalived::Virtual_server_spec = Struct[{
  Optional["type"] => Enum['ip', 'fwmark', 'group'],
  Optional[ip_family] => Enum['inet', 'inet6'],
  Optional[delay_loop] => Integer[1],
  Optional[lvs_sched] => Keepalived::Virtual_server::Lvs_schedulers,
  Optional[hashed] => Boolean,
  Optional["flag-1"] => Boolean,
  Optional["flag-2"] => Boolean,
  Optional["flag-3"] => Boolean,
  Optional["sh-port"] => Boolean,
  Optional["sh-fallback"] => Boolean,
  Optional[ops] => Boolean,
  Optional[lvs_method] => Keepalived::Virtual_server::Lvs_methods,
  Optional[persistence_engine] => String,
  Optional[persistence_timeout] => Integer[1],
  Optional[persistence_granularity] => String,
  Optional[protocol] => Keepalived::Virtual_server::Protocols,
  Optional[ha_suspend] => Boolean,
  Optional[virtualhost] => String,
  Optional[alpha] => Boolean,
  Optional[omega] => Boolean,
  Optional[quorum] => Integer[1],
  Optional[hysteresis] => Integer[0],
  Optional[quorum_up] => String,
  Optional[quorum_down] => String,
  Optional[sorry_server] => String,
  Optional[sorry_server_inhibit] => Boolean,
  Optional[sorry_server_lvs_method] => Keepalived::Virtual_server::Lvs_methods,
  Optional[real_servers] => Keepalived::Virtual_server::Real_servers,
  Optional[ensure] => Enum["present", "absent"]
}]
