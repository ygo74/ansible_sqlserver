#!/usr/bin/python
# -*- coding: utf-8 -*-

# <COPYRIGHT>
# <CODEGENMETA>
#
# This file is part of Ansible
#
# Ansible is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Ansible is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Ansible.  If not, see <http://www.gnu.org/licenses/>.

# this is a windows documentation stub.  actual code lives in the .ps1
# file of the same name

DOCUMENTATION = '''
---
module: win_xsqlserveralwaysonavailabilitygroupreplica
version_added: 
short_description: 
description:
     - 
options:
  AvailabilityGroupName:
    description:
      - 
    required: True
    default: 
    aliases: []

  Name:
    description:
      - 
    required: True
    default: 
    aliases: []

  SQLInstanceName:
    description:
      - 
    required: True
    default: 
    aliases: []

  SQLServer:
    description:
      - 
    required: True
    default: 
    aliases: []

  AvailabilityMode:
    description:
      - 
    required: False
    default: 
    aliases: []
    choices:      - AsynchronousCommit      - SynchronousCommit
  BackupPriority:
    description:
      - 
    required: False
    default: 
    aliases: []

  ConnectionModeInPrimaryRole:
    description:
      - 
    required: False
    default: 
    aliases: []
    choices:      - AllowAllConnections      - AllowReadWriteConnections
  ConnectionModeInSecondaryRole:
    description:
      - 
    required: False
    default: 
    aliases: []
    choices:      - AllowAllConnections      - AllowNoConnections      - AllowReadIntentConnectionsOnly
  EndpointHostName:
    description:
      - 
    required: False
    default: 
    aliases: []

  Ensure:
    description:
      - 
    required: False
    default: 
    aliases: []
    choices:      - Absent      - Present
  FailoverMode:
    description:
      - 
    required: False
    default: 
    aliases: []
    choices:      - Automatic      - Manual
  PrimaryReplicaSQLInstanceName:
    description:
      - 
    required: False
    default: 
    aliases: []

  PrimaryReplicaSQLServer:
    description:
      - 
    required: False
    default: 
    aliases: []

  PsDscRunAsCredential_username:
    description:
      - 
    required: False
    default: 
    aliases: []

  PsDscRunAsCredential_password:
    description:
      - 
    required: False
    default: 
    aliases: []

  ReadOnlyRoutingConnectionUrl:
    description:
      - 
    required: False
    default: 
    aliases: []

  ReadOnlyRoutingList:
    description:
      - 
    required: False
    default: 
    aliases: []

  AutoInstallModule:
    description:
      - If true, the required dsc resource/module will be auto-installed using the Powershell package manager
    required: False
    default: false
    aliases: []
    choices:      - true      - false
  AutoConfigureLcm:
    description:
      - If true, LCM will be auto-configured for directly invoking DSC resources (which is a one-time requirement for Ansible DSC modules)
    required: False
    default: false
    aliases: []
    choices:      - true      - false
