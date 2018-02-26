export TARGET = iphone:clang:latest:10.1
export ARCHS = armv7 arm64 

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DarkSocial
DarkSocial_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Instagram"
