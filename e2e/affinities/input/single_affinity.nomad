# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

job "test1" {
  datacenters = ["dc1", "dc2"]
  type        = "service"

  constraint {
    attribute = "${attr.kernel.name}"
    value     = "linux"
  }

  group "test1" {
    count = 5

    affinity {
      attribute = "${node.datacenter}"
      operator  = "="
      value     = "dc1"
      weight    = 100
    }

    task "test" {
      driver = "raw_exec"

      config {
        command = "bash"
        args    = ["-c", "sleep 15000"]
      }
    }
  }
}
