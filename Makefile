include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-letonspeedmonitor
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=leton <tiny19811103@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

LUCI_TITLE:=LuCI Speed Monitor
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+luci-base +luci-lib-jsonc

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=$(LUCI_TITLE)
  PKGARCH:=$(LUCI_PKGARCH)
  DEPENDS:=$(LUCI_DEPENDS)
endef

define Package/$(PKG_NAME)/description
  A network speed monitoring application for OpenWrt
  Designed by leton
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/letonspeedmonitor
	$(INSTALL_DATA) ./luasrc/controller/letonspeedmonitor.lua $(1)/usr/lib/lua/luci/controller/
	$(INSTALL_DATA) ./luasrc/view/letonspeedmonitor/status.htm $(1)/usr/lib/lua/luci/view/letonspeedmonitor/
endef

$(eval $(call BuildPackage,$(PKG_NAME))) 