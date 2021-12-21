proxy:
  proxytype: nornir
    
hosts:
  csr1000v-1:
    hostname: sandbox-iosxe-latest-1.cisco.com
    platform: cisco_ios
    username: developer
    password: C1sco12345
    port: 22
    connection_options:
      pyats:
        extras:
          devices:
            csr1000v-1:
              os: iosxe
              connections:
                default:
                  ip: 131.226.217.143
                  protocol: ssh
                  port: 22
      napalm:
        platform: ios
      scrapli:
        platform: cisco_iosxe
        extras:
          auth_strict_key: False
          ssh_config_file: False
      http:
        port: 443
        extras:
          transport: https
          verify: False
          base_url: "restconf/data"
          headers:
            Content-Type: "application/yang-data+json"
            Accept: "application/yang-data+json"
      ncclient:
        port: 830
        extras:
          allow_agent: False
          hostkey_verify: False
          device_params:
            name: iosxe
      scrapli_netconf:
        port: 830
        extras:
          transport: paramiko
          ssh_config_file: True
          auth_strict_key: False
          transport_options: 
            netconf_force_pty: False
  iosxr1:
    hostname: sandbox-iosxr-1.cisco.com
    platform: cisco_xr
    username: admin
    password: "C1sco12345"
    port: 22
    connection_options:
      pyats:
        extras:
          devices:
            iosxr1:
              os: iosxr
              connections:
                default:
                  ip: 131.226.217.150
                  protocol: ssh
                  port: 22
      napalm:
        platform: iosxr
      scrapli:
        platform: cisco_iosxr
        extras:
          auth_strict_key: False
          ssh_config_file: False
      ncclient:
        port: 830
        extras:
          allow_agent: False
          hostkey_verify: False
          device_params:
            name: iosxr
      scrapli_netconf:
        port: 830
        extras:
          ssh_config_file: True
          auth_strict_key: False
          transport_options: 
            netconf_force_pty: False
  sandbox-nxos-1.cisco:
    hostname: sandbox-nxos-1.cisco.com
    platform: nxos_ssh
    username: admin
    password: "Admin_1234!"
    port: 22
    connection_options:
      pyats:
        extras:
          devices:
            sandbox-nxos-1.cisco:
              os: nxos
              connections:
                default:
                  ip: 131.226.217.151
                  protocol: ssh
                  port: 22
      napalm:
        platform: nxos_ssh
      scrapli:
        platform: cisco_nxos
        extras:
          auth_strict_key: False
          ssh_config_file: False
      ncclient:
        port: 830
        extras:
          allow_agent: False
          hostkey_verify: False
          device_params:
            name: nexus
      scrapli_netconf:
        port: 830
        extras:
          ssh_config_file: True
          auth_strict_key: False
          transport_options: 
            netconf_force_pty: False   
