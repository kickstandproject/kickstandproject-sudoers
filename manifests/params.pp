# == Class: sudoers::params
#
# === Authors
#
# Paul Belanger <paul.belanger@polybeacon.com>
#
# === Copyright
#
# Copyright (C) 2012, PolyBeacon, Inc.
#
# This program is free software, distributed under the terms
# of the Apache License, Version 2.0. See the LICENSE file at
# the top of the source tree.
#
class sudoers::params {
  $configdir = $::operatingsystem ? {
    default => '/etc/sudoers.d',
  }

  $configfile = $::operatingsystem ? {
    default => '/etc/sudoers',
  }

  $group = $::operatingsystem ? {
    default => 'root',
  }

  $mode = $::operatingsystem ? {
    default => '0640',
  }

  $owner = $::operatingsystem ? {
    default => 'root',
  }

  $packagename = $::operatingsystem ? {
    default => 'sudo',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
