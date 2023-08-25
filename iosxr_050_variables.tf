locals {
  project_title       = "SP-B"
  project_description = "Topology created using Terraform to represent SP-X"

  routers = [
    {
      name = "pe01"
      host = "10.0.1.51"
    },
    {
      name = "pe02"
      host = "10.0.1.52"
    },
    {
      name = "p01"
      host = "10.0.1.53"
    },
    {
      name = "p02"
      host = "10.0.1.54"
    },
    {
      name = "p03"
      host = "10.0.1.55"
    },
    {
      name = "p04"
      host = "10.0.1.56"
    },
    {
      name = "pe03"
      host = "10.0.1.57"
    },
    {
      name = "pe04"
      host = "10.0.1.58"
    },
    {
      name = "asbr01"
      host = "10.0.1.59"
    },
    {
      name = "asbr02"
      host = "10.0.1.60"
    },
    {
      name = "rrpce01"
      host = "10.0.1.61"
    },
    {
      name = "rrpce02"
      host = "10.0.1.62"
    },
  ]

  xr_username = "admin"
  xr_password = "C!sco123"

}

variable "routers_info" {
  type = map(any)
  default = {
    1 = {
      device                          = "pe01"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0001.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2

    },
    2 = {
      device                          = "pe02"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0002.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    3 = {
      device                          = "p01"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0003.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    4 = {
      device                          = "p02"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0004.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    5 = {
      device                          = "p03"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0005.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    6 = {
      device                          = "p04"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0006.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    7 = {
      device                          = "pe03"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0007.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    8 = {
      device                          = "pe04"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0008.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    9 = {
      device                          = "asbr01"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0009.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    10 = {
      device                          = "asbr02"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0010.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    11 = {
      device                          = "rrpce01"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0011.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
    12 = {
      device                          = "rrpce02"
      process_id                      = "CORE"
      net                             = "49.0001.0010.0031.0001.0012.00"
      is_type                         = "level-2-only"
      address_family_ipv4             = true
      af_ipv4_metric_style_wide       = true
      af_ipv4_metric_style_wide_level = 2
      address_family_ipv6             = true
      af_ipv6_metric_style_wide       = true
      af_ipv6_metric_style_wide_level = 2
    },
  }
}

variable "isis_interfaces" {
  type = map(any)
  default = {
    1 = {
      device                = "pe01"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    2 = {
      device                = "pe01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    3 = {
      device                = "pe01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    4 = {
      device                = "pe01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },

    5 = {
      device                = "pe02"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },

    6 = {
      device                = "pe02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    7 = {
      device                = "pe02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    8 = {
      device                = "pe02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    9 = {
      device                = "pe03"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },

    10 = {
      device                = "pe03"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    11 = {
      device                = "pe03"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    12 = {
      device                = "pe03"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    13 = {
      device                = "pe04"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },

    14 = {
      device                = "pe04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    15 = {
      device                = "pe04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    16 = {
      device                = "pe04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    17 = {
      device                = "p01"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },

    18 = {
      device                = "p01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    19 = {
      device                = "p01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    20 = {
      device                = "p01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    21 = {
      device                = "p01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/2"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    22 = {
      device                = "p01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/3"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    23 = {
      device                = "p01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/4"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    24 = {
      device                = "p03"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },

    25 = {
      device                = "p03"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    26 = {
      device                = "p03"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    27 = {
      device                = "p03"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    28 = {
      device                = "p03"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/2"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    29 = {
      device                = "p03"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/3"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    30 = {
      device                = "p03"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/4"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    31 = {
      device                = "p02"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },

    32 = {
      device                = "p02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    33 = {
      device                = "p02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    34 = {
      device                = "p02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    35 = {
      device                = "p02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/2"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    36 = {
      device                = "p02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/3"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    37 = {
      device                 = "p02"
      process_id            = "CORE"
      interface_id           = "GigabitEthernet0/0/0/4"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point         = true
      passive                = false
      address_family_ipv4    = true
      af_ipv4_metric         = 200
      af_ipv4_metric_level   = 2
      address_family_ipv6    = true
      af_ipv6_metric         = 200
      af_ipv6_metric_level   = 2
    },
    38 = {
      device                = "p02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/5"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    39 = {
      device                = "p04"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },

    40 = {
      device                = "p04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    41 = {
      device                = "p04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    42 = {
      device                = "p04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    43 = {
      device                = "p04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/2"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    44 = {
      device                = "p04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/3"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    45 = {
      device                = "p04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/4"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    46 = {
      device                = "p04"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/5"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    47 = {
      device                = "asbr01"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    48 = {
      device                = "asbr01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    49 = {
      device                = "asbr01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    50 = {
      device                = "asbr01"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    51 = {
      device                = "asbr02"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    52 = {
      device                = "asbr02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    53 = {
      device                = "asbr02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/1"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    54 = {
      device                = "asbr02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/10"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    55 = {
      device                = "rrpce01"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = true
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    56 = {
      device                = "rrpce02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    57 = {
      device                = "rrpce02"
      process_id            = "CORE"
      interface_id          = "Loopback0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },
    58 = {
      device                = "rrpce02"
      process_id            = "CORE"
      interface_id          = "GigabitEthernet0/0/0/0"
      circuit_type          = "level-2-only"
      hello_padding_disable = true
      point_to_point        = true
      passive               = false
      address_family_ipv4   = true
      af_ipv4_metric        = 200
      af_ipv4_metric_level  = 2
      address_family_ipv6   = true
      af_ipv6_metric        = 200
      af_ipv6_metric_level  = 2
    },

  }
}