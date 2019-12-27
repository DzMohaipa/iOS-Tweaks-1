include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AudiomackCrack
AudiomackCrack_FILES = Tweak.xm SCLAlertView/SCLAlertView.m SCLAlertView/SCLAlertViewResponder.m SCLAlertView/SCLAlertViewStyleKit.m SCLAlertView/SCLButton.m SCLAlertView/SCLSwitchView.m SCLAlertView/SCLTextView.m SCLAlertView/SCLTimerDisplay.m SCLAlertView/UIImage+ImageEffects.m
AudiomackCrack_FRAMEWORKS = UIKit Foundation
ARCHS = arm64
CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 audiomack-iphone"
