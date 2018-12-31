include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YesSIMCardInstalled
YesSIMCardInstalled_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += ysci_preference_bundle
include $(THEOS_MAKE_PATH)/aggregate.mk
