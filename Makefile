include $(TOPDIR)/rules.mk

PKG_NAME:=patch_git_example
PKG_RELEASE:=1
PKG_VERSION:=1.0.0

include $(INCLUDE_DIR)/package.mk

define Package/patch_git_example
	CATEGORY:=Base system
	TITLE:=patch_git_example
endef

define Package/patch_git_example/description
	This is an example app package which uses an example library package
endef

define Package/patch_git_example/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/patch_git_example $(1)/usr/bin
endef

$(eval $(call BuildPackage,patch_git_example))
