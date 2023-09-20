resource "iosxr_router_isis_interface" "interfaces" {
  for_each       = local.isis_interfaces
  device         = each.value.device
  process_id     = each.value.process_id
  interface_name = each.value.interface_id
  circuit_type   = each.value.circuit_type

  hello_padding_disable = each.value.hello_padding_disable
  point_to_point        = each.value.point_to_point
  passive               = each.value.passive

}