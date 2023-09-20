

resource "iosxr_router_isis_interface_address_family" "ipv4_unicast" {
  depends_on = [iosxr_router_isis_interface.interfaces]

  for_each = {
    for key, value in local.isis_interfaces :
    key => value if value.address_family_ipv4 == "true"
  }

  device         = each.value.device
  process_id     = each.value.process_id
  interface_name = each.value.interface_id
  af_name        = "ipv4"
  saf_name       = "unicast"

  metric_levels = [
    {
      level_id = each.value.af_ipv4_metric_level
      metric   = each.value.af_ipv4_metric
    }
  ]
}



resource "iosxr_router_isis_interface_address_family" "ipv6_unicast" {
  depends_on = [iosxr_router_isis_interface.interfaces]
  for_each = {
    for key, value in local.isis_interfaces :
    key => value if value.address_family_ipv6 == "true"
  }
  device         = each.value.device
  process_id     = each.value.process_id
  interface_name = each.value.interface_id
  af_name        = "ipv6"
  saf_name       = "unicast"

  metric_levels = [
    {
      level_id = each.value.af_ipv6_metric_level
      metric   = each.value.af_ipv6_metric
    }
  ]
}
