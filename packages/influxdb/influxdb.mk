################################################################################
#
# InfluxDB
#
################################################################################

INFLUXDB_VERSION = 2.1.1
INFLUXDB_SOURCE = influxdb2-$(INFLUXDB_VERSION)-linux-amd64.tar.gz
INFLUXDB_SITE =  https://dl.influxdata.com/influxdb/releases/
INFLUXDB_LICENSE = MIT
INFLUXDB_STAGING = YES

# URL https://dl.influxdata.com/influxdb/releases/influxdb2-2.1.1-linux-amd64.tar.gz

define INFLUXDB_BUILD_CMDS
	echo "Source Compile"
endef

define INFLUXDB_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0755 $(@D)/
endef

$(eval $(generic-package))
