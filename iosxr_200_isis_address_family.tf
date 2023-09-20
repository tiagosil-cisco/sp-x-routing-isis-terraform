resource "iosxr_router_isis_address_family" "ipv4" {
  for_each = {
    for key, value in local.isis_info :
    key => value if value.address_family_ipv4 == true
  }
  device     = each.key
  process_id = each.value.process_id
  af_name    = "ipv4"
  saf_name   = "unicast"
  metric_style_levels = [
    {
      level_id = each.value.af_ipv4_metric_style_wide_level
      wide     = each.value.af_ipv4_metric_style_wide
    }
  ]
}

resource "iosxr_router_isis_address_family" "ipv6" {
  for_each = {
    for key, value in local.isis_info :
    key => value if value.address_family_ipv6 == true
  }
  device     = each.key
  process_id = each.value.process_id
  af_name    = "ipv6"
  saf_name   = "unicast"
  metric_style_levels = [
    {
      level_id = each.value.af_ipv6_metric_style_wide_level
      wide     = each.value.af_ipv6_metric_style_wide
    }
  ]
}