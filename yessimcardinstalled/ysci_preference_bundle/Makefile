include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ysci_preference_bundle
ysci_preference_bundle_FILES = ysciRootListController.m
ysci_preference_bundle_INSTALL_PATH = /Library/PreferenceBundles
ysci_preference_bundle_FRAMEWORKS = UIKit
ysci_preference_bundle_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/ysci_preference_bundle.plist$(ECHO_END)
