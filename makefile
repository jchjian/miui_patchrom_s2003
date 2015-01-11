#
# Makefile
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_s2003.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := 

local-modified-priv-apps :=

local-modified-jars := services-ext

# All apps need to be removed from original ZIP file
local-remove-apps := 

# All apks from MIUI
local-miui-removed-apps := O2O MediaProvider

local-miui-removed-priv-apps := O2O MediaProvider

local-miui-modified-apps := Phone MiuiSystemUI

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
PORT_PRODUCT := s2003_yegui

local-zip-misc:	
	@echo use custom files of system
	$(hide) cp -rf other/system/* $(ZIP_DIR)/system
	
	@echo use new boot that add miui services
	$(hide) cp -rf other/boot-miui.img $(ZIP_DIR)/boot.img
	
	@echo the files \in media use miui , no use vendor\'s anymore
	$(hide) rm -rf $(ZIP_DIR)/system/media/*
	$(hide) cp -rf ../miui/XHDPI/system/media/* $(ZIP_DIR)/system/media
	
	@echo add baidushurufa
	$(hide) cp -rf other/data/* $(ZIP_DIR)/data
