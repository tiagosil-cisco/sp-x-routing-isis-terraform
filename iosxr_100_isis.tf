resource "iosxr_router_isis" "isis_processes" {
  for_each                                                              = local.isis_info
  device                                                                = each.key
  set_overload_bit_on_startup_advertise_as_overloaded_time_to_advertise = 10
  process_id                                                            = each.value.process_id
  is_type                                                               = each.value.is_type
  nets = [
    {
      net_id = each.value.net
    }
  ]

}