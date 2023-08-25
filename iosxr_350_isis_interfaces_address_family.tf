
resource "iosxr_router_isis_interface_address_family" "ipv4_unicast" {
  for_each = {
    for key, value in var.isis_interfaces :
    key => value if value.address_family_ipv4 == true
  }
  device         = each.value.device
  process_id     = each.value.process_id
  interface_name = each.value.interface_id
  af_name        = "ipv4"
  saf_name       = "unicast"
  metric         = each.value.af_ipv4_metric
  metric_levels = [
    {
      level_id = each.value.af_ipv4_metric_level
    }
  ]
}
