#import <SCLAlertView/SCLAlertView.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

%hook YTMAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	if (SYSTEM_VERSION_LESS_THAN(@"10.0")) {
		UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
		alertWindow.rootViewController = [[UIViewController alloc] init];
		alertWindow.windowLevel = UIWindowLevelAlert + 1;

		SCLAlertView *alert = [[SCLAlertView alloc] init];

		alert.customViewColor = [UIColor colorWithRed:0.97 green:0.53 blue:0.73 alpha:1.0];

		[alert addButton: @"Close App" actionBlock: ^(void) {
			UIApplication *app = [UIApplication sharedApplication];
			[app performSelector:@selector(suspend)];
			[NSThread sleepForTimeInterval:2.0];
			exit(0);
		}];

		[alert showSuccess:@"Notice" subTitle:@"Your iOS version Is Incompatible \n iOS 10 And Above Only" closeButtonTitle:nil duration:0.0f];

		[alertWindow makeKeyAndVisible];
		[alertWindow.rootViewController presentViewController:alert animated:YES completion:nil];
	}
	if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"10.0")) {
		if ([[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/net.hollr2099.youtubemusicpp.list"]) {
			if ([[NSUserDefaults standardUserDefaults] boolForKey:@"sclAlertViewShownOnce"] == NO) {

				UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
				alertWindow.rootViewController = [[UIViewController alloc] init];
				alertWindow.windowLevel = UIWindowLevelAlert + 1;

				SCLAlertView *alert = [[SCLAlertView alloc] init];

				alert.customViewColor = [UIColor colorWithRed:0.97 green:0.53 blue:0.73 alpha:1.0];

				[alert addButton: @"Visit Twitter" actionBlock: ^(void) {
					[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/sarahh12099"]];
					alertWindow.hidden = YES;
				}];

				[alert addButton: @"Thank You" actionBlock: ^(void) {
					alertWindow.hidden = YES;
				}];

				[alert showSuccess:@"YouTube Music++" subTitle:@"Version: 1.0.3.1 \n Cracked By SarahH12099" closeButtonTitle:nil duration:0.0f];

				[alertWindow makeKeyAndVisible];
				[alertWindow.rootViewController presentViewController:alert animated:YES completion:nil];

				[[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"sclAlertViewShownOnce"];
				[[NSUserDefaults standardUserDefaults] synchronize];
			}
		}
		else {
			UIWindow *alertWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
			alertWindow.rootViewController = [[UIViewController alloc] init];
			alertWindow.windowLevel = UIWindowLevelAlert + 1;

			SCLAlertView *alert = [[SCLAlertView alloc] init];

			alert.customViewColor = [UIColor colorWithRed:0.97 green:0.53 blue:0.73 alpha:1.0];

			[alert addButton: @"Visit Official Repo" actionBlock: ^(void) {
				[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://sarahh12099.github.io/repo/"]];
				UIApplication *app = [UIApplication sharedApplication];
				[app performSelector:@selector(suspend)];
				[NSThread sleepForTimeInterval:2.0];
				exit(0);
			}];

			[alert addButton: @"Close App" actionBlock: ^(void) {
				UIApplication *app = [UIApplication sharedApplication];
				[app performSelector:@selector(suspend)];
				[NSThread sleepForTimeInterval:2.0];
				exit(0);
			}];

			[alert showSuccess:@"Notice" subTitle:@"Installed From Unofficial Repo \n Install Only From The Offical Repo" closeButtonTitle:nil duration:0.0f];

			[alertWindow makeKeyAndVisible];
			[alertWindow.rootViewController presentViewController:alert animated:YES completion:nil];
		}
	}
	return %orig;
}
%end

%hook YTGlobalConfig
- (BOOL)alwaysShowVisitAdvertiser {
	return 0;
}
%end

%hook YTUpsell
- (BOOL)isCounterfactual {
	return 1;
}
%end

%hook YTIPlayerResponse
- (BOOL)ytm_isAudioOnlyPlayable {
	return 1;
}
- (id)ytm_audioOnlyUpsell {
	return NULL;
}
- (id)offlineUpsell {
	return NULL;
}
- (id)backgroundUpsell {
	return NULL;
}
- (BOOL)isMonetized {
	return 0;
}
- (BOOL)isPlayableInBackground {
	return 1;
}
%end

%hook YTSingleVideo
- (BOOL)isPlayableInPictureInPicture {
	return 1;
}
- (BOOL)isPlayableInBackground {
	return 1;
}
%end

%hook YTPlaybackData
- (BOOL)isPlayableInBackground {
	return 1;
}
%end

%hook YTIPlayabilityStatus
- (BOOL)isKoreanAgeVerificationRequired {
	return 0;
}
- (BOOL)isAgeCheckRequired {
	return 0;
}
- (BOOL)isContentCheckRequired {
	return 0;
}
- (BOOL)isPlayableInBackground {
	return 1;
}
- (BOOL)isPlayableInPictureInPicture {
	return 1;
}
- (id)offlineUpsell {
	return NULL;
}
- (id)backgroundUpsell {
	return NULL;
}
%end

%hook YTMVideoOverlayViewController
- (BOOL)isContentPanAllowed {
	return 1;
}
- (id)maybeShowUserEducation {
	return NULL;
}
- (id)maybeShowAudioOnlyUpsell {
	return NULL;
}
- (BOOL)isAVSwitchAvailable {
	return 1;
}
- (BOOL)showAVSwitchUserEducation {
	return 0;
}
- (BOOL)canDoubleTapForCurrentPlayerState {
	return 1;
}
- (BOOL)isAudioOnlyAuthorized {
	return 1;
}
- (void)setAVSwitchAvailable:(BOOL)arg1 {
	arg1 = 1;
	%orig;
}
%end

%hook YTMAudioCastUpsellDialogController
- (id)showAudioCastUpsellDialogWithUpsellParentResponder:(id)arg1 {
	return NULL;
}
%end

%hook YTMUpsellDialogController
- (id)showUpsellDialogWithUpsell:(id)arg1 upsellParentResponder:(id)arg2 {
	return NULL;
}
- (id)showUpsellDialogWithUpsellResponderEvent:(id)arg1 {
	return NULL;
}
- (id)showUpsellDialogWithUpsell:(id)arg1 videoID:(id)arg2 toastType:(int)arg3 upsellParentResponder:(id)arg4 {
	return NULL;
}
%end

%hook YTMSettings
- (BOOL)areHintsDisabled {
	return 1;
}
- (BOOL)doubleTapToSeekEnabled {
	return 1;
}
- (BOOL)isAudioQualitySettingsEnabled {
	return 1;
}
- (BOOL)allowAudioOnlyManualQualitySelection {
	return 1;
}
- (BOOL)allowRestrictedContentFlow {
	return 1;
}
- (void)setHintsDisabled:(BOOL)arg1 {
	arg1 = 1;
	%orig;
}
%end

%hook YTIBackgroundabilityRenderer
- (id)backgroundUpsell {
	return NULL;
}
%end

%hook YTMBackgroundUpsellNotificationController
- (id)removePendingBackgroundNotifications {
	return NULL;
}
- (id)maybeScheduleBackgroundUpsellNotification {
	return NULL;
}
%end

%hook YTMWatchViewController
- (BOOL)isAudioOnlyAuthorized:(id)arg1 {
	return 1;
}
%end

%hook YTMNavigationDrawerPromoView
- (id)init {
	return NULL;
}
%end

%hook YTDoubleTapToSeekController
- (void)enableDoubleTapToSeek:(BOOL)arg1 {
	arg1 = 1;
	%orig;
}
- (void)showDoubleTapToSeekEducationView:(BOOL)arg1 {
	arg1 = 0;
	%orig;
}
%end

%hook YTMContentViewController
- (id)showUpsellOrUserMessageForOfflineVideos:(id)arg1 offlineWatchEndpoint:(id)arg2 {
	return NULL;
}
%end

%hook YTIOfflineabilityRenderer
- (id)offlineUpsell {
	return NULL;
}
%end

%hook YTIOfflineState
- (id)offlineUpsell {
	return NULL;
}
%end

%hook YTPlayerPromoController
- (BOOL)showBackgroundabilityUpsell {
	return 0;
}
- (BOOL)showBackgroundOnboardingHint {
	return 0;
}
%end