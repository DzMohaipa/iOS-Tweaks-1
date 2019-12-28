include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AudiomackCrack
AudiomackCrack_FILES = Tweak.xm
ARCHS = arm64
CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 audiomack-iphone"
