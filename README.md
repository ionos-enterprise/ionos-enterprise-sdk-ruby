[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
# DEPRECATED

This is no longer supported, please consider using [IONOS Cloud SDK Ruby](https://github.com/ionos-cloud/sdk-ruby) instead.

# SDK for Ruby

Version: **profitbricks-sdk-ruby v4.0.0**

## Table of Contents

* [Description](#description)
* [Getting Started](#getting-started)
  * [Installation](#installation)
  * [Authenticating](#authenticating)
* [Reference](#reference)
  * [Data Centers](#data-centers)
    * [List Data Centers](#list-data-centers)
    * [Retrieve a Data Center](#retrieve-a-data-center)
    * [Create a Data Center](#create-a-data-center)
    * [Update a Data Center](#update-a-data-center)
    * [Delete a Data Center](#delete-a-data-center)
  * [Locations](#locations)
    * [List Locations](#list-locations)
    * [Get a Location](#get-a-location)
  * [Servers](#servers)
    * [List Servers](#list-servers)
    * [Retrieve a Server](#retrieve-a-server)
    * [Create a Server](#create-a-server)
    * [Update a Server](#update-a-server)
    * [Delete a Server](#delete-a-server)
    * [List Attached Volumes](#list-attached-volumes)
    * [Attach a Volume](#attach-a-volume)
    * [Retrieve an Attached Volume](#retrieve-an-attached-volume)
    * [Detach a Volume](#detach-a-volume)
    * [List Attached CD-ROMs](#list-attached-cd-roms)
    * [Attach a CD-ROM](#attach-a-cd-rom)
    * [Retrieve an Attached CD-ROM](#retrieve-an-attached-cd-rom)
    * [Detach a CD-ROM](#detach-a-cd-rom)
    * [Reboot a Server](#reboot-a-server)
    * [Start a Server](#start-a-server)
    * [Stop a Server](#stop-a-server)
  * [Images](#images)
    * [List Images](#list-images)
    * [Get an Image](#get-an-image)    
    * [Update an Image](#update-an-image)
    * [Delete an Image](#delete-an-image)
  * [Volumes](#volumes)
    * [List Volumes](#list-volumes)
    * [Get a Volume](#get-a-volume)
    * [Create a Volume](#create-a-volume)
    * [Update a Volume](#update-a-volume)
    * [Delete a Volume](#delete-a-volume)
    * [Create a Volume Snapshot](#create-a-volume-snapshot)
    * [Restore a Volume Snapshot](#restore-a-volume-snapshot)
  * [Snapshots](#snapshots)
    * [List Snapshots](#list-snapshots)
    * [Get a Snapshot](#get-a-snapshot)
    * [Update a Snapshot](#update-a-snapshot)
    * [Delete a Snapshot](#delete-a-snapshot)
  * [IP Blocks](#ip-blocks)
    * [List IP Blocks](#list-ip-blocks)
    * [Get an IP Block](#get-an-ip-block)
    * [Create an IP Block](#create-an-ip-block)
    * [Delete an IP Block](#delete-an-ip-block)
  * [LANs](#lans)
    * [List LANs](#list-lans)
    * [Create a LAN](#create-a-lan)
    * [Get a LAN](#get-a-lan)
    * [Update a LAN](#update-a-lan)
    * [Delete a LAN](#delete-a-lan)
  * [Network Interfaces (NICs)](#network-interfaces)
    * [List NICs](#list-nics)
    * [Get a NIC](#get-a-nic)
    * [Create a NIC](#create-a-nic)
    * [Update a NIC](#update-a-nic)
    * [Delete a NIC](#delete-a-nic)
  * [Firewall Rules](#firewall-rules)
    * [List Firewall Rules](#list-firewall-rules)
    * [Get a Firewall Rule](#get-a-firewall-rule)
    * [Create a Firewall Rule](#create-a-firewall-rule)
    * [Update a Firewall Rule](#update-a-firewall-rule)
    * [Delete a Firewall Rule](#delete-a-firewall-rule)
  * [Load Balancers](#load-balancers)
    * [List Load Balancers](#list-load-balancers)
    * [Get a Load Balancer](#get-a-load-balancer)
    * [Create a Load Balancer](#create-a-load-balancer)
    * [Update a Load Balancer](#update-a-load-balancer)
    * [List Load Balanced NICs](#list-load-balanced-nics)
    * [Get a Load Balanced NIC](#get-a-load-balanced-nic)
    * [Associate NIC to a Load Balancer](#associate-nic-to-a-load-balancer)
    * [Remove a NIC Association](#remove-a-nic-association)
  * [User Management](#user-management)
    * [List Groups](#list-groups)
    * [Get a Group](#get-a-group)
    * [Create a Group](#create-a-group)
    * [Update a Group](#update-a-group)
    * [Delete a Group](#delete-a-group)
    * [List Shares](#list-shares)
    * [Get a Share](#get-a-share)
    * [Add a Share](#add-a-share)
    * [Update a Share](#update-a-share)
    * [Delete a Share](#delete-a-share)
    * [List Users](#list-users)
    * [Get a User](#get-a-user)
    * [Create a User](#create-a-user)
    * [Update a User](#update-a-user)
    * [Delete a User](#delete-a-user)
    * [List Users in a Group](#list-users-in-a-group)
    * [Add User to Group](#add-user-to-group)
    * [Remove User from a Group](#remove-user-from-a-group)
    * [List Resources](#list-resources)
    * [Get a Resource](#get-a-resource)
  * [Contract Resources](#contract-resources)
    * [List Contract Resources](#list-contract-resources)
  * [Requests](#requests)
    * [List Requests](#list-requests)
    * [Get a Request](#get-a-request)
    * [Get a Request Status](#get-a-request-status)
* [Support](#support)
* [Testing](#testing)
* [Contributing](#contributing)



## Description

This Ruby library is a wrapper for the ProfitBricks REST API. All API operations are performed over SSL and authenticated using your ProfitBricks portal credentials. The API can be accessed within an instance running in ProfitBricks or directly over the Internet from any application that can send an HTTPS request and receive an HTTPS response.

This guide will show you how to programmatically perform common management tasks using the ProfitBricks SDK for Ruby.

## Getting Started

* ProfitBricks account

Before you begin you will need to have [signed-up](https://www.profitbricks.com/signup) for a ProfitBricks account. The credentials you setup during sign-up will be used to authenticate against the API.




## Installation

The official ProfitBricks Ruby library is available from the ProfitBricks GitHub account found [here](https://github.com/profitbricks/profitbricks-sdk-ruby). You can download the latest stable version by cloning the repository and then adding the project to your solution.

Once the SDK is downloaded:

Add this line to your application's Gemfile:

    gem 'profitbricks-sdk-ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install profitbricks-sdk-ruby

### Authenticating

Connecting to ProfitBricks is handled by first setting up your authentication credentials.

To setup your credentials you will have to provide configure and provide your username and password

    ProfitBricks.configure do |config|
      config.url = 'https://api.profitbricks.com/cloudapi/v4/'
      config.username = ENV['PROFITBRICKS_USERNAME']
      config.password = ENV['PROFITBRICKS_PASSWORD']
      config.debug = false
      config.timeout = 300
      config.interval = 5
      config.depth=5
    end


You can choose to read them from the environment variables like in the example above, or just provide the strting value for *username* and *password*.

## Reference

This section provides details on all the available operations and the parameters they accept. Brief code snippets demonstrating usage are also included.

### Data Centers

Virtual data centers (VDCs) are the foundation of the ProfitBricks platform. VDCs act as logical containers for all other objects you will be creating, e.g., servers. You can provision as many VDCs as you want. VDCs have their own private network and are logically segmented from each other to create isolation.


#### List Data Centers

This operation will list all currently provisioned VDCs that your account credentials provide access to.

The optional `depth` parameter can be set from the `ProfitBricks.configure` and it defines the level, one being the least and five being the most, of information returned with the response.

```
datacenters = ProfitBricks::Datacenter.list
```

---

#### Retrieve a Data Center

Use this to retrieve details about a specific VDC.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |

```
datacenter = ProfitBricks::Datacenter.get(datacenter_id)
```

---

#### Create a Data Center

Use this operation to create a new VDC. You can create a "simple" VDC by supplying just the required *name* and *location* parameters. This operation also has the capability of provisioning a "complex" VDC by supplying additional parameters for servers, volumes, LANs, and/or load balancers.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| name | **yes** | string | The name of the data center. |
| location | **yes** | string | The physical ProfitBricks location where the VDC will be created. |
| description | no | string | A description for the data center, e.g. staging, production. |
| servers | no | collection | Details about creating one or more servers. See [create a server](#create-a-server). |
| volumes | no | collection | Details about creating one or more volumes. See [create a volume](#create-a-volume). |
| lans | no | collection | Details about creating one or more LANs. See [create a lan](#create-a-lan). |
| loadbalancers | no | collection | Details about creating one or more load balancers. See [create a load balancer](#create-a-load- balancer). |

The following table outlines the locations currently supported:

| Value| Country | City |
|---|---|---|
| us/las | United States | Las Vegas |
| us/ewr | United States | Newark |
| de/fra | Germany | Frankfurt |
| de/fkb | Germany | Karlsruhe |

**NOTES**:
- The value for `name` cannot contain the following characters: (@, /, , |, ‘’, ‘).
- You cannot change the virtual data center `location` once it has been provisioned.

```
datacenter = ProfitBricks::Datacenter.create(
      name: 'Ruby SDK Composite Datacenter',
      description: 'SDK  Composite test environment',
      location: 'de/fkb',
      servers: [
        {
          name: 'New Composite Server',
          ram: 1024,
          cores: 1,
          volumes: [
            {
              name: 'composite-boot',
              size: 5,
              type: 'HDD',
              licenceType: 'UNKNOWN'
            }
          ]
        }
      ]
    )

```

---

#### Update a Data Center

After retrieving a data center, either by getting it by id, or as a create response object, you can change its properties by calling the the `update` method. Some parameters may not be changed using either of the update methods.

The following table describes the available request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| name | no | string | The new name of the VDC. |
| description | no | string | The new description of the VDC. |

```
datacenter.update(name: 'datacenter1', description: 'Ruby SDK test environment')
```

---

#### Delete a Data Center

This will remove all objects within the virtual data center AND remove the virtual data center object itself.

**NOTE**: This is a highly destructive operation which should be used with extreme caution!

The following table describes the available request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC that you want to delete. |

```
datacenter.delete;
```

---

### Locations

Locations are the physical ProfitBricks data centers where you can provision your VDCs.


#### List Locations

This operation will return the list of currently available locations.

The optional `depth` parameter can be set from the `ProfitBricks.configure` and it defines the level, one being the least and five being the most, of information returned with the response.

```
locations = ProfitBricks::Location.list
```

---

#### Get a Location

Retrieves the attributes of a specific location.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| location_id | **yes** | string | The ID consisting of country/city. |

```
location = ProfitBricks::Location.get(location_id)
```

---

### Servers


#### List Servers

You can retrieve a list of all the servers provisioned inside a specific VDC.


The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |

```
servers = ProfitBricks::Server.list(datacenter_id)
```

---

#### Retrieve a Server

Returns information about a specific server such as its configuration, provisioning status, etc.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
```

---

#### Create a Server

Creates a server within an existing VDC. You can configure additional properties such as specifying a boot volume and connecting the server to a LAN.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| name | **yes** | string | The name of the server. |
| cores | **yes** | int | The total number of cores for the server. |
| ram | **yes** | int | The amount of memory for the server in MB, e.g. 2048. Size must be specified in multiples of 256 MB with a minimum of 256 MB; however, if you set `ram_hot_plug` to *True* then you must use a minimum of 1024 MB. |
| availabilityZone | no | string | The availability zone in which the server should exist. |
| cpuFamily | no | string | Sets the CPU type. "AMD_OPTERON" or "INTEL_XEON". Defaults to "AMD_OPTERON". |
| bootVolume | no | object | Reference to a volume used for booting. If not *null* then `bootCdrom` has to be *null*. |
| bootCdrom | no | object | Reference to a CD-ROM used for booting. If not *null* then `bootVolume` has to be *null*. |
| volumes | no | object | A collection of volume objects that you want to create and attach to the server.|
| nics | no | object | A collection of NICs you wish to create at the time the server is provisioned. |

The following table outlines the server availability zones currently supported:

| Availability Zone | Comment |
|---|---|
| AUTO | Automatically Selected Zone |
| ZONE_1 | Fire Zone 1 |
| ZONE_2 | Fire Zone 2 |

```
server = ProfitBricks::Server.create(
      datacenter_id,
      name: 'New Composite Server',
      ram: 1024,
      cores: 1,
      volumes: [
        {
          name: 'composite-boot',
          size: 5,
          type: 'HDD',
          licenceType: 'UNKNOWN'
        }
      ],
      nics: [
        {
          name: 'nic1',
          dhcp: 'true',
          lan: 1,
          firewallrules: [
            {
              name: 'SSH',
              protocol: 'TCP',
              portRangeStart: 22,
              portRangeEnd: 22,
            }
          ]
        }
      ])
```

---

#### Update a Server

Perform updates to the attributes of a server.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| name | no | string | The name of the server. |
| cores | no | int | The number of cores for the server. |
| ram | no | int | The amount of memory in the server. |
| availabilityZone | no | string | The new availability zone for the server. |
| cpuFamily | no | string | Sets the CPU type. "AMD_OPTERON" or "INTEL_XEON". Defaults to "AMD_OPTERON". |
| bootVolume | no | object | Reference to a volume used for booting. If not *null* then `bootCdrom` has to be *null* |
| bootCdrom | no | object | Reference to a CD-ROM used for booting. If not *null* then `bootVolume` has to be *null*. |

After retrieving a server, either by getting it by id, or as a create response object, you can change its properties and call the `update` method:

```
server = server.update(
 name: 'New Server - Updated',
 cores: 2
)
```

---

#### Delete a Server

This will remove a server from a data center. **NOTE**: This will not automatically remove the storage volume(s) attached to a server. A separate operation is required to delete a storage volume.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `delete` method directly:

```
server.delete
```

---

#### List Attached Volumes

Retrieves a list of volumes attached to the server.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `list_volumes` method directly on the server instance:

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
volumes = server.list_volumes
```

---

#### Attach a Volume

This will attach a pre-existing storage volume to the server.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| volume_id | **yes** | string | The ID of a storage volume. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `attach_volume` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
volume = server.attach_volume(volume_id)
```

---

#### Retrieve an Attached Volume

This will retrieve the properties of an attached volume.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| volume_id | **yes** | string | The ID of the attached volume. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `get_volume` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
volume = server.get_volume(volume_id)
```

---

#### Detach a Volume

This will detach the volume from the server. Depending on the volume `hot_unplug` settings, this may result in the server being rebooted.

This will NOT delete the volume from your virtual data center. You will need to make a separate request to delete a volume.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| volume_id | **yes** | string | The ID of the attached volume. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `detach_volume` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
volume = server.detach_volume(volume_id)
```

---

#### List Attached CD-ROMs

Retrieves a list of CD-ROMs attached to a server.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `list_cdroms` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
cdroms = server.list_cdroms
```

---

#### Attach a CD-ROM

You can attach a CD-ROM to an existing server.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| cdrom_image_id | **yes** | string | The ID of a CD-ROM. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `attach_cdrom` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
image = server.attach_cdrom(cdrom_image_id)
```

---

#### Retrieve an Attached CD-ROM

You can retrieve a specific CD-ROM attached to the server.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| cdrom_image_id | **yes** | string | The ID of the attached CD-ROM. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `get_cdrom` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
cdrom = server.get_cdrom(image.id)
```

---

#### Detach a CD-ROM

This will detach a CD-ROM from the server.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| cdrom_image_id | **yes** | string | The ID of the attached CD-ROM. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `detach_cdrom` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
server.detach_cdrom(cdrom_image_id)
```

---

#### Reboot a Server

This will force a hard reboot of the server. Do not use this method if you want to gracefully reboot the machine. This is the equivalent of powering off the machine and turning it back on.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `reboot` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
server.reboot
```

---

#### Start a Server

This will start a server. If the server's public IP was deallocated then a new IP will be assigned.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `start` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
server.start
```

---

#### Stop a Server

This will stop a server. The machine will be forcefully powered off, billing will cease, and the public IP, if one is allocated, will be deallocated.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |

After retrieving a server, either by getting it by id, or as a create response object, you can call the `stop` method directly.

```
server = ProfitBricks::Server.get(datacenter_id, server_id)
server.stop
```

---

### Images


#### List Images

Retrieve a list of images.

The optional `depth` parameter can be set from the `ProfitBricks.configure` and it defines the level, one being the least and five being the most, of information returned with the response.

```
images = ProfitBricks::Image.list
```

---

#### Get an Image

Retrieves the attributes of a specific image.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| image_id | **yes** | string | The ID of the image. |

```
 ProfitBricks::Image.get(image_id)
```

---

### Volumes


#### List Volumes

Retrieve a list of volumes within the virtual data center. If you want to retrieve a list of volumes attached to a server please see the [List Attached Volumes](#list-attached-volumes) entry in the Server section for details.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |

```
volumes = ProfitBricks::Volume.list(datacenter_id)
```

---

#### Get a Volume

Retrieves the attributes of a given volume.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| volume_id | **yes** | string | The ID of the volume. |

```
volumes = ProfitBricks::Volume.get(datacenter_id,volume_id)
```

---

#### Create a Volume

Creates a volume within the virtual data center. This will NOT attach the volume to a server. Please see the [Attach a Volume](#attach-a-volume) entry in the Server section for details on how to attach storage volumes.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| name | no | string | The name of the volume. |
| size | **yes** | int | The size of the volume in GB. |
| bus | no | string | The bus type of the volume (VIRTIO or IDE). Default: VIRTIO. |
| image | **yes** | string | The image or snapshot ID. |
| type | **yes** | string | The volume type, HDD or SSD. |
| licenceType | **yes** | string | The licence type of the volume. Options: LINUX, WINDOWS, WINDOWS2016, UNKNOWN, OTHER |
| imagePassword | **yes** | string | One-time password is set on the Image for the appropriate root or administrative account. This field may only be set in creation requests. When reading, it always returns *null*. The password has to contain 8-50 characters. Only these characters are allowed: [abcdefghjkmnpqrstuvxABCDEFGHJKLMNPQRSTUVX23456789] |
| sshKeys | **yes** | string | SSH keys to allow access to the volume via SSH. |
| availabilityZone | no | string | The storage availability zone assigned to the volume. Valid values: AUTO, ZONE_1, ZONE_2, or ZONE_3. This only applies to HDD volumes. Leave blank or set to AUTO when provisioning SSD volumes. |

The following table outlines the various licence types you can define:

| Licence Type | Comment |
|---|---|
| WINDOWS2016 | Use this for the Microsoft Windows Server 2016 operating system. |
| WINDOWS | Use this for the Microsoft Windows Server 2008 and 2012 operating systems. |
| LINUX |Use this for Linux distributions such as CentOS, Ubuntu, Debian, etc. |
| OTHER | Use this for any volumes that do not match one of the other licence types. |
| UNKNOWN | This value may be inherited when you've uploaded an image and haven't set the license type. Use one of the options above instead. |

The following table outlines the storage availability zones currently supported:

| Availability Zone | Comment |
|---|---|
| AUTO | Automatically Selected Zone |
| ZONE_1 | Fire Zone 1 |
| ZONE_2 | Fire Zone 2 |
| ZONE_3 | Fire Zone 3 |

* You will need to provide either the `image` or the `licenceType` parameters. `licenceType` is required, but if `image` is supplied, it is already set and cannot be changed. Similarly either the `imagePassword` or `sshKeys` parameters need to be supplied when creating a volume. We recommend setting a valid value for `imagePassword` even when using `sshKeys` so that it is possible to authenticate using the remote console feature of the DCD.

```
volume = ProfitBricks::Volume.create(
  datacenter_id, name: 'my boot volume for server 1',
  size: 5,
  type: 'HDD',
  licenceType: 'UNKNOWN',
  availabilityZone: 'AUTO')
```

---

#### Update a Volume

You can update -- in full or partially -- various attributes on the volume; however, some restrictions are in place:

You can increase the size of an existing storage volume. You cannot reduce the size of an existing storage volume. The volume size will be increased without requiring a reboot if the relevant hot plug settings have been set to *true*. The additional capacity is not added automatically added to any partition, therefore you will need to handle that inside the OS afterwards. Once you have increased the volume size you cannot decrease the volume size.

Since an existing volume is being modified, none of the request parameters are specifically required as long as the changes being made satisfy the requirements for creating a volume.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| volume_id | **yes** | string | The ID of the volume. |
| name | no | string | The name of the volume. |
| size | no | int | The size of the volume in GB. Only increase when updating. |
| bus | no | string | The bus type of the volume (VIRTIO or IDE). Default: VIRTIO. |
| image | no | string | The image or snapshot ID. |
| type | no | string | The volume type, HDD or SSD. |
| licenceType | no | string | The licence type of the volume. Options: LINUX, WINDOWS, WINDOWS2016, UNKNOWN, OTHER |
| availabilityZone | no | string | The storage availability zone assigned to the volume. Valid values: AUTO, ZONE_1, ZONE_2, or ZONE_3. This only applies to HDD volumes. Leave blank or set to AUTO when provisioning SSD volumes. |

After retrieving a volume, either by getting it by id, or as a create response object, you can change its properties and call the `update` method:

```
volume = volume.update(
 name: 'Resized storage to 15 GB',
 size: 15
)
```

---

#### Delete a Volume

Deletes the specified volume. This will result in the volume being removed from your data center. Use this with caution.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| volume_id | **yes** | string | The ID of the volume. |

After retrieving a volume, either by getting it by id, or as a create response object, you can call the `delete` method directly.

```
volumes = ProfitBricks::Volume.get(datacenter_id,volume_id)
volume.delete
```

---

#### Create a Volume Snapshot

Creates a snapshot of a volume within the virtual data center. You can use a snapshot to create a new storage volume or to restore a storage volume.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| volume_id | **yes** | string | The ID of the volume. |
| name | no | string | The name of the snapshot. |
| description | no | string | The description of the snapshot. |

After retrieving a volume, either by getting it by id, or as a create response object, you can call the `create_snapshot` method directly.

```
volume = ProfitBricks::Volume.get(datacenter_id,volume_id)
snapshot = volume.create_snapshot(
      name: 'Snapshot of storage X on 12.12.12 12:12:12 - updated',
      description: 'description of a snapshot - updated')
```

---

#### Restore a Volume Snapshot

This will restore a snapshot onto a volume. A snapshot is created as just another image that can be used to create new volumes or to restore an existing volume.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| snapshot_id | **yes** | string |  The ID of the snapshot. |

After retrieving a volume, either by getting it by id, or as a create response object, you can call the `restore_snapshot` method directly.

```
volume = ProfitBricks::Volume.get(datacenter_id,volume_id)
volume.restore_snapshot(snapshot_id)
```

---

### Snapshots


#### List Snapshots

You can retrieve a list of all available snapshots.

The optional `depth` parameter can be set from the `ProfitBricks.configure` and it defines the level, one being the least and five being the most, of information returned with the response.

```
snapshots = ProfitBricks::Snapshot.list
```

---

#### Get a Snapshot

Retrieves the attributes of a specific snapshot.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| snapshot_id | **yes** | string | The ID of the snapshot. |

```
snapshot = ProfitBricks::Snapshot.get(snapshot_id)
```

---

#### Update a Snapshot

Perform updates to attributes of a snapshot.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| snapshot_id | **yes** | string | The ID of the snapshot. |
| name | no | string | The name of the snapshot. |
| description | no | string | The description of the snapshot. |
| licenceType | no | string | The snapshot's licence type: LINUX, WINDOWS, WINDOWS2016, or OTHER. |
| cpuHotPlug | no | bool | This volume is capable of CPU hot plug (no reboot required) |
| cpuHotUnplug | no | bool | This volume is capable of CPU hot unplug (no reboot required) |
| ramHotPlug | no | bool |  This volume is capable of memory hot plug (no reboot required) |
| ramHotUnplug | no | bool | This volume is capable of memory hot unplug (no reboot required) |
| nicHotPlug | no | bool | This volume is capable of NIC hot plug (no reboot required) |
| nicHotUnplug | no | bool | This volume is capable of NIC hot unplug (no reboot required) |
| discVirtioHotPlug | no | bool | This volume is capable of VirtIO drive hot plug (no reboot required) |
| discVirtioHotUnplug | no | bool | This volume is capable of VirtIO drive hot unplug (no reboot required) |
| discScsiHotPlug | no | bool | This volume is capable of SCSI drive hot plug (no reboot required) |
| discScsiHotUnplug | no | bool | This volume is capable of SCSI drive hot unplug (no reboot required) |

After retrieving a snapshot, either by getting it by id, or as a create response object, you can change its properties and call the `update` method:

```
snapshot = ProfitBricks::Snapshot.get(snapshot_id)
snapshot = snapshot.update(name: 'New name')
```

---

#### Delete a Snapshot

Deletes the specified snapshot.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| snapshot_id | **yes** | string | The ID of the snapshot. |

After retrieving a snapshot, either by getting it by id, or as a create response object, you can call the `delete` method directly.

```
snapshot = ProfitBricks::Snapshot.get(snapshot_id)
snapshot.delete
```

---

### IP Blocks

The IP block operations assist with managing reserved /static public IP addresses.


#### List IP Blocks

Retrieve a list of available IP blocks.

```
ipblocks = ProfitBricks::IPBlock.list
```

#### Get an IP Block

Retrieves the attributes of a specific IP block.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| ipblock_id | **yes** | string | The ID of the IP block. |

```
ipblock = ProfitBricks::IPBlock.get(ipblock_id)
```

---

#### Create an IP Block

Creates an IP block. IP blocks are attached to a location, so you must specify a valid `location` along with a `size` parameter indicating the number of IP addresses you want to reserve in the IP block. Servers or other resources using an IP address from an IP block must be in the same `location`.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| location | **yes** | string | This must be one of the locations: us/las, us/ewr, de/fra, de/fkb. |
| size | **yes** | int | The size of the IP block you want. |
| name | no | string | A descriptive name for the IP block |

The following table outlines the locations currently supported:

| Value| Country | City |
|---|---|---|
| us/las | United States | Las Vegas |
| us/ewr | United States | Newark |
| de/fra | Germany | Frankfurt |
| de/fkb | Germany | Karlsruhe |

To create an IP block, establish the parameters and then call `reserve`.

```
ipblock = ProfitBricks::IPBlock.reserve
 (
    location: "de/fra",
    size: 1
  )
```

---

#### Delete an IP Block

Deletes the specified IP Block.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| ipblock_id | **yes** | string | The ID of the IP block. |

After retrieving an IP block, either by getting it by id, or as a create response object, you can call the `release` method directly.

```
ipblock = ProfitBricks::IPBlock.get(ipblock_id)
ipblock.release
```

---

### LANs

#### List LANs

Retrieve a list of LANs within the virtual data center.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |

```
lans = ProfitBricks::LAN.list(datacenter_id)
```

---

#### Create a LAN

Creates a LAN within a virtual data center.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| name | no | string | The name of your LAN. |
| public | **Yes** | bool | Boolean indicating if the LAN faces the public Internet or not. |
| nics | no | object | A collection of NICs associated with the LAN. |

```
lan = ProfitBricks::LAN.create(datacenter_id,  name: 'public Lan 4',
  public: 'true')
```

---

#### Get a LAN

Retrieves the attributes of a given LAN.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| lan_id | **yes** | int | The ID of the LAN. |

```
lan = ProfitBricks::LAN.get(datacenter_id, lan_id)
```

---

#### Update a LAN

Perform updates to attributes of a LAN.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| lan_id | **yes** | int | The ID of the LAN. |
| name | no | string | A descriptive name for the LAN. |
| public | no | bool | Boolean indicating if the LAN faces the public Internet or not. |

After retrieving a LAN, either by getting it by id, or as a create response object, you can change its properties and call the `update` method:

```
lan = lan.update(public: false)
```

---

#### Delete a LAN

Deletes the specified LAN.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| lan_id | **yes** | string | The ID of the LAN. |

After retrieving a LAN, either by getting it by id, or as a create response object, you can call the `delete` method directly.

```
lan = ProfitBricks::LAN.get(datacenter_id, lan_id)
lan.delete
```

---

### Network Interfaces


#### List NICs

Retrieve a list of LANs within the virtual data center.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |

```
nics = ProfitBricks::NIC.list(datacenter_id, server_id)
```

---

#### Get a NIC

Retrieves the attributes of a given NIC.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| nic_id | **yes** | string | The ID of the NIC. |

```
nic = ProfitBricks::NIC.get(datacenter_id, server_id, nic_id)
```

---

#### Create a NIC

Adds a NIC to the target server.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string| The ID of the server. |
| name | no | string | The name of the NIC. |
| ips | no | string collection | IPs assigned to the NIC. This can be a collection. |
| dhcp | no | bool | Set to FALSE if you wish to disable DHCP on the NIC. Default: TRUE. |
| lan | **yes** | int | The LAN ID the NIC will sit on. If the LAN ID does not exist it will be created. |
| nat | no | bool | Indicates the private IP address has outbound access to the public internet. |
| firewallActive | no | bool | Once you add a firewall rule this will reflect a true value. |
| firewallRules | no | object| A list of firewall rules associated to the NIC represented as a collection. |

```
nic = ProfitBricks::NIC.create
  (
    datacenter_id, server_id,  name: 'nic1',
    dhcp: true,
    lan: 1,
    firewallActive: true,
    nat: false)
```

---

#### Update a NIC

You can update -- in full or partially -- various attributes on the NIC; however, some restrictions are in place:

The primary address of a NIC connected to a load balancer can only be changed by changing the IP of the load balancer. You can also add additional reserved, public IPs to the NIC.

The user can specify and assign private IPs manually. Valid IP addresses for private networks are 10.0.0.0/8, 172.16.0.0/12 or 192.168.0.0/16.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string| The ID of the server. |
| nic_id | **yes** | string| The ID of the NIC. |
| name | no | string | The name of the NIC. |
| ips | no | string collection | IPs assigned to the NIC represented as a collection. |
| dhcp | no | bool | Boolean value that indicates if the NIC is using DHCP or not. |
| lan | no | int | The LAN ID the NIC sits on. |
| nat | no | bool | Indicates the private IP address has outbound access to the public internet. |

After retrieving a NIC, either by getting it by id, or as a create response object, you can call the `update` method directly.

```
nic = ProfitBricks::NIC.get(datacenter_id, server_id, nic_id)
nic = nic.update(ips: ['10.1.1.1', '10.1.1.2'])
```

---

#### Delete a NIC

Deletes the specified NIC.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string| The ID of the server. |
| nic_id | **yes** | string| The ID of the NIC. |

After retrieving a NIC, either by getting it by id, or as a create response object, you can call the `Delete` method directly.

```
nic = ProfitBricks::NIC.get(datacenter_id, server_id, nic_id)
nic.delete
```

---

### Firewall Rules

#### List Firewall Rules

Retrieves a list of firewall rules associated with a particular NIC.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| nic_id | **yes** | string | The ID of the NIC. |

```
fwrules = ProfitBricks::Firewall.list(datacenter_id, server_id, nic_id)
```

---

#### Get a Firewall Rule

Retrieves the attributes of a given firewall rule.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| nic_id | **yes** | string | The ID of the NIC. |
| firewall_rule_id | **yes** | string | The ID of the firewall rule. |

```
fwrule = ProfitBricks::Firewall.get(datacenter_id, server_id, nic_id, firewall_rule_id)
```

---

#### Create a Firewall Rule

This will add a firewall rule to the NIC.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| nic_id | **yes** | string | The ID of the NIC. |
| name | no | string | The name of the firewall rule. |
| protocol | **yes** | string | The protocol for the rule: TCP, UDP, ICMP, ANY. |
| sourceMac | no | string | Only traffic originating from the respective MAC address is allowed. Valid format: aa:bb:cc:dd:ee:ff. A *null* value allows all source MAC address. |
| sourceIp | no | string | Only traffic originating from the respective IPv4 address is allowed. A *null* value allows all source IPs. |
| targetIp | no | string | In case the target NIC has multiple IP addresses, only traffic directed to the respective IP address of the NIC is allowed. A *null* value allows all target IPs. |
| portRangeStart | no | string | Defines the start range of the allowed port (from 1 to 65534) if protocol TCP or UDP is chosen. Leave `portRangeStart` and `portRangeEnd` value as *null* to allow all ports. |
| portRangeEnd | no | string | Defines the end range of the allowed port (from 1 to 65534) if the protocol TCP or UDP is chosen. Leave `portRangeStart` and `portRangeEnd` value as *null* to allow all ports. |
| icmpType | no | string | Defines the allowed type (from 0 to 254) if the protocol ICMP is chosen. A *null* value allows all types. |
| icmpCode | no | string | Defines the allowed code (from 0 to 254) if protocol ICMP is chosen. A *null* value allows all codes. |

```
fwrule = ProfitBricks::Firewall.create(
  datacenter_id, server_id, nic_id, name: 'SSH',
  protocol: 'TCP',
  sourceMac: '01:23:45:67:89:00',
  sourceIp: nil,
  targetIp: nil,
  portRangeStart: 22,
  portRangeEnd: 22,
  icmpType: nil,
  icmpCode: nil)
```

---

#### Update a Firewall Rule

Perform updates to attributes of a firewall rule.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| nic_id | **yes** | string | The ID of the NIC. |
| firewall_rule_id | **yes** | string | The ID of the firewall rule. |
| name | no | string | The name of the firewall rule. |
| sourceMac | no | string | Only traffic originating from the respective MAC address is allowed. Valid format: aa:bb:cc:dd:ee:ff. A *null* value allows all source MAC address. |
| sourceIp | no | string | Only traffic originating from the respective IPv4 address is allowed. A *null* value allows all source IPs. |
| targetIp | no | string | In case the target NIC has multiple IP addresses, only traffic directed to the respective IP address of the NIC is allowed. A *null* value allows all target IPs. |
| portRangeStart | no | string | Defines the start range of the allowed port (from 1 to 65534) if protocol TCP or UDP is chosen. Leave `portRangeStart` and `portRangeEnd` value as *null* to allow all ports. |
| portRangeEnd | no | string | Defines the end range of the allowed port (from 1 to 65534) if the protocol TCP or UDP is chosen. Leave `portRangeStart` and `portRangeEnd` value as *null* to allow all ports. |
| IcmpType | no | string | Defines the allowed type (from 0 to 254) if the protocol ICMP is chosen. A *null* value allows all types. |
| IcmpCode | no | string | Defines the allowed code (from 0 to 254) if protocol ICMP is chosen. A *null* value allows all codes. |

After retrieving a firewall rule, either by getting it by id, or as a create response object, you can change its properties and call the `update` method:

```
fwrule = ProfitBricks::Firewall.get(datacenter_id, server_id, nic_id, firewall_rule_id)
fwrule = fwrule.update(
  sourceMac: '01:98:22:22:44:22',
  targetIp: '123.100.101.102'
  )
```

---

#### Delete a Firewall Rule

Removes the specific firewall rule.

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| server_id | **yes** | string | The ID of the server. |
| nic_id | **yes** | string | The ID of the NIC. |
| firewall_rule_id | **yes** | string | The ID of the firewall rule. |

After retrieving a firewall rule, either by getting it by id, or as a create response object, you can call the `delete` method directly.

```
fwrule = ProfitBricks::Firewall.get(datacenter_id, server_id, nic_id, firewall_rule_id)
fwrule.delete
```

---



### Load Balancers

#### List Load Balancers

Retrieve a list of load balancers within the data center.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |

```
loadbalancers = ProfitBricks::Loadbalancer.list(datacenter_id)
```

---

#### Get a Load Balancer

Retrieves the attributes of a given load balancer.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| loadbalancer_id | **yes** | string | The ID of the load balancer. |

```
loadbalancer = ProfitBricks::Loadbalancer.get(datacenter_id, loadbalancer_id)
```

---

#### Create a Load Balancer

Creates a load balancer within the virtual data center. Load balancers can be used for public or private IP traffic.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| name | **yes** | string | The name of the load balancer. |
| ip | no | string | IPv4 address of the load balancer. All attached NICs will inherit this IP. |
| dhcp | no | bool | Indicates if the load balancer will reserve an IP using DHCP. |
| balancedNics | no | string collection | List of NICs taking part in load-balancing. All balanced NICs inherit the IP of the load balancer. |

```
loadbalancer = ProfitBricks::Loadbalancer.create(
  datacenter_id, name: 'My LB',
  # ip: '10.2.2.3',
  dhcp: 'true')
```

---

#### Update a Load Balancer

Perform updates to attributes of a load balancer.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| loadbalancer_id | **yes** | string | The ID of the load balancer. |
| name | no | string | The name of the load balancer. |
| ip | no | string | The IP of the load balancer. |
| dhcp | no | bool | Indicates if the load balancer will reserve an IP using DHCP. |

After retrieving a load balancer, either by getting it by id, or as a create response object, you can change it's properties and call the `update` method:

```
loadbalancer = ProfitBricks::Loadbalancer.get(datacenter_id, loadbalancer_id)
loadbalancer = loadbalancer.update(
  ip: '10.1.1.2'
  )
```

---

#### Delete a Load Balancer

Deletes the specified load balancer.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| loadbalancer_id | **yes** | string | The ID of the load balancer. |

After retrieving a load balancer, either by getting it by id, or as a create response object, you can call the `delete` method directly.

```
loadbalancer = ProfitBricks::Loadbalancer.get(datacenter_id, loadbalancer_id)
loadbalancer.delete
```

---

#### List Load Balanced NICs

This will retrieve a list of NICs associated with the load balancer.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| loadbalancer_id | **yes** | string | The ID of the load balancer. |

After retrieving a load balancer, either by getting it by id, or as a create response object, you can call the `list_balanced_nics` method directly.

```
loadbalancer = ProfitBricks::Loadbalancer.get(datacenter_id, loadbalancer_id)
balanced_nics = loadbalancer.list_balanced_nics
```

---

#### Get a Load Balanced NIC

Retrieves the attributes of a given load balanced NIC.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| loadbalancer_id | **yes** | string | The ID of the load balancer. |
| nic_id | **yes** | string | The ID of the NIC. |

After retrieving a load balancer, either by getting it by id, or as a create response object, you can call the `get_balanced_nic` method directly.

```
loadbalancer = ProfitBricks::Loadbalancer.get(datacenter_id, loadbalancer_id)
nic = ProfitBricks::NIC.get(datacenter_id, server_id, nic_id)
balanced_nic = loadbalancer.get_balanced_nic(nic_id)
```

---

#### Associate NIC to a Load Balancer

This will associate a NIC to a load balancer, enabling the NIC to participate in load-balancing.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| loadbalancer_id | **yes** | string | The ID of the load balancer. |
| nic_id | **yes** | string | The ID of the NIC. |

After retrieving a load balancer, either by getting it by id, or as a create response object, you can call the `associate_balanced_nic` method directly.

```
loadbalancer = ProfitBricks::Loadbalancer.get(datacenter_id, loadbalancer_id)
nic = ProfitBricks::NIC.get(datacenter_id, server_id, nic_id)
balanced_nic = loadbalancer.associate_balanced_nic(nic.id)
```

---

#### Remove a NIC Association

Removes the association of a NIC with a load balancer.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| datacenter_id | **yes** | string | The ID of the VDC. |
| loadbalancer_id | **yes** | string | The ID of the load balancer. |
| nic_id | **yes** | string | The ID of the NIC. |

After retrieving a load balancer, either by getting it by id, or as a create response object, you can call the `remove_balanced_nic` method directly.

```
loadbalancer.remove_balanced_nic(nic.id)
```

---

### User Management

#### List Groups

Retrieves a list of all groups.

| Name | Required | Type | Description |
|---|:-:|---|---|
| options | no| string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    groups = ProfitBricks::Group.list()

---

#### Get a Group

Retrieves the attributes of a given group.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
| options | no | string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    response = ProfitBricks::Group.get(group_id)

---

#### Create a Group

Creates a new group and set group privileges.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| name | **yes** | string | The ID of the group. |
| createDataCenter | no | bool | Indicates if the group is allowed to create virtual data centers. |
| createSnapshot | no | bool | Indicates if the group is allowed to create snapshots. |
| reserveIp | no | bool | Indicates if the group is allowed to reserve IP addresses. |
| accessActivityLog | no | bool | Indicates if the group is allowed to access activity log. |

  group = {
            name: 'my group',
            createDataCenter: true,
            createSnapshot: true,
            reserveIp: true,
            accessActivityLog: true
          }

  response = ProfitBricks::Group.create(group)

---

#### Update a Group

Updates a group's name or privileges.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
| name | **yes** | string | The ID of the group. |
| createDataCenter | no | bool | Indicates if the group is allowed to create virtual data centers. |
| createSnapshot | no | bool | Indicates if the group is allowed to create snapshots. |
| reserveIp | no | bool | Indicates if the group is allowed to reserve IP addresses. |
| accessActivityLog | no | bool | Indicates if the group is allowed to access activity log. |

    group = ProfitBricks::Group.get(group_id)
    group = group.update(
      name: 'my group RENAME',
      createDataCenter: false
    )

---

#### Delete a Group

Deletes the specified group.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
    group = ProfitBricks::Group.get(group_id)
    response = group.delete

---

#### List Shares

Retrieves a list of all shares though a group.

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
| options | no | string | The options of the resource. |

The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    response = ProfitBricks::Share.list(group_id)

---

#### Get a Share

Retrieves a specific resource share available to a group.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
| resource_id | **yes** | string | The ID of the resource. |
| options | no | string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    response = ProfitBricks::Share.get(
        group_id,
        resource_id)

---

#### Add a Share

Shares a resource through a group.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
| resource_id | **yes** | string | The ID of the resource. |
| editPrivilege | no | string | Indicates that the group has permission to edit privileges on the resource. |
| sharePrivilege | no | string | Indicates that the group has permission to share the resource. |

    share = {
              editPrivilege: true,
              sharePrivilege: true
            }
    response = ProfitBricks::Share.create(group_id, resource_id, share)

---

#### Update a Share

Updates the permissions of a group for a resource share.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
| resource_id | **yes** | string | The ID of the resource. |
| options | no | string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| editPrivilege | no | string | Indicates that the group has permission to edit privileges on the resource. |
| sharePrivilege | no | string | Indicates that the group has permission to share the resource. |

    share = ProfitBricks::Share.update(group_id, resource_id, {
      editPrivilege: false
    })

---

#### Delete a Share

Removes a resource share from a group.

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
| resource_id | **yes** | string | The ID of the resource. |

    ProfitBricks::Share.delete(group_id, resource_id)

---

#### List Users

Retrieves a list of all users.

| Name | Required | Type | Description |
|---|:-:|---|---|
| options | no | string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | no | string | The ID of the group. |
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    response =  ProfitBricks::User.list()

---

#### Get a User

Retrieves a single user.

| Name | Required | Type | Description |
|---|:-:|---|---|
| user_id | **yes** | string | The ID of the user. |
| options | no | string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    response = ProfitBricks::User.get(user_id)

---

#### Create a User

Creates a new user.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| firstname | **yes** | string | A name for the user. |
| lastname | **yes**  | bool | A name for the user. |
| email | **yes**  | bool | An e-mail address for the user. |
| password | **yes**  | bool | A password for the user. |
| administrator | no | bool | Assigns the user have administrative rights. |
| forceSecAuth | no | bool | Indicates if secure (two-factor) authentication should be forced for the user. |

    user = {
            firstname: 'John',
            lastname: 'Doe',
            email: 'no-reply@example.com',
            password: 'secretpassword123',
            administrator: 'administrator',
            forceSecAuth: false
          }

    response = ProfitBricks::User.create(user)

---

#### Update a User

Updates an existing user.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| user_id | **yes** | string | The ID of the user. |
| firstname | **yes** | string | A name for the user. |
| lastname | **yes**  | bool | A name for the user. |
| email | **yes**  | bool | An e-mail address for the user. |
| administrator | **yes** | bool | Assigns the user have administrative rights. |
| forceSecAuth | **yes** | bool | Indicates if secure (two-factor) authentication should be forced for the user. |

    user = ProfitBricks::User.get(user_id)
      response = user.update(
      administrator: false,
      firstname: 'John',
      lastname: 'Doe',
      email: 'no-reply@example.com',
      forceSecAuth: false
    )

---

#### Delete a User

Removes a user.

| Name | Required | Type | Description |
|---|:-:|---|---|
| user_id | **yes** | string | The ID of the user. |

    user = ProfitBricks::User.get(user_id)
    response = user.delete

---

#### List Users in a Group

Retrieves a list of all users that are members of a particular group.

| Name | Required | Type | Description |
|---|:-:|---|---|
| options | no | string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | no| string | The ID of the group. |
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    response = ProfitBricks::User.list(group_id: 'UUID')

---

#### Add User to Group

Adds an existing user to a group.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
| user_id | **yes** | string | The ID of the user. |

    response = user = ProfitBricks::User.add_to_group(group_id,user_id)

---

#### Remove User from a Group

Removes a user from a group.

| Name | Required | Type | Description |
|---|:-:|---|---|
| group_id | **yes** | string | The ID of the group. |
| user_id | **yes** | string | The ID of the user. |

    response = ProfitBricks::User.remove_from_group(group_id,user_id)

---

#### List Resources

Retrieves a list of all resources. Alternatively, Retrieves all resources of a particular type.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| resource_type | no | string | The resource type: `datacenter`, `image`, `snapshot` or `ipblock`. |
| options | no | string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    response = ProfitBricks::Resource.list

    response = ProfitBricks::Resource.list_by_type('datacenter')

---

#### Get a Resource

Retrieves a single resource of a particular type.

The following table describes the request arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| resource_type | **yes** | string | The resource type: `datacenter`, `image`, `snapshot` or `ipblock`. |
| resource_id | **yes** | string | The ID of the resource. |
| options | no | string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    response = ProfitBricks::Resource.get('datacenter', datacenter_id)

---

### Contract Resources

#### List Contract Resources

Retrieves information about the resource limits for a particular contract and the current resource usage.

| Name | Required | Type | Description |
|---|:-:|---|---|
| options | no | string | The options of the resource. |


The following table describes the options arguments:

| Name | Required | Type | Description |
|---|:-:|---|---|
| depth | no | int | An integer value of 0 - 5 that affects the amount of detail returned. |

    response = ProfitBricks::Contract.get

---

### Requests

Each call to the ProfitBricks Cloud API is assigned a request ID. These operations can be used to get information about the requests that have been submitted and their current status.


#### List Requests

Retrieve a list of requests.

```
requests = ProfitBricks::Request.list
```

---

#### Get a Request

Retrieves the attributes of a specific request.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| request_id | **yes** | string | The ID of the request. |

```
request = ProfitBricks::Request.get(request_id)
```

---

#### Get a Request Status

Retrieves the status of a request.

The following table describes the request arguments:

| Name| Required | Type | Description |
|---|:-:|---|---|
| request_id | **yes** | string | The ID of the request. |

```
request = ProfitBricks::Request.get(request_id)
status = request.status
```

---

## Support

* A guide and reference documentation can be found in the repo docs/ directory.
* [ProfitBricks SDK for Ruby](https://devops.profitbricks.com/libraries/ruby/) guide.
* [ProfitBricks REST API](https://devops.profitbricks.com/api/rest/) documentation.
* Ask a question or discuss at [ProfitBricks DevOps Central](https://devops.profitbricks.com/community).
* Report an [issue here](https://github.com/profitbricks/profitbricks-sdk-ruby/issues).

## Testing

Please note that the unit tests will create and destroy live resources under
the account specified and you will be responsible for any charges incurred.
Proceed with caution.

Add the ProfitBricks API credentials to the `spec/spec_helper.rb` file and
run the following command.

    $ rspec spec

## Contributing

1. Fork it ( https://github.com/[my-github-username]/profitbricks-sdk-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
