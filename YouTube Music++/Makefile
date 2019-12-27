include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouTubeMusicCrack
YouTubeMusicCrack_FILES = Tweak.xm SCLAlertView/SCLAlertView.m SCLAlertView/SCLAlertViewResponder.m SCLAlertView/SCLAlertViewStyleKit.m SCLAlertView/SCLButton.m SCLAlertView/SCLSwitchView.m SCLAlertView/SCLTextView.m SCLAlertView/SCLTimerDisplay.m SCLAlertView/UIImage+ImageEffects.m
YouTubeMusicCrack_FRAMEWORKS = UIKit Foundation
ARCHS = arm64
CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 YouTubeMusic"
