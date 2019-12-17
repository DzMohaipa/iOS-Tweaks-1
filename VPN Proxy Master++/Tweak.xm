#import <SCLAlertView/SCLAlertView.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

%hook AppDelegate
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
    	if ([[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/net.hollr2099.vpnproxymasterpp.list"]) {
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

            	[alert showSuccess:@"VPN Proxy Master++" subTitle:@"Version: 1.0.1.3 \n Cracked By SarahH12099" closeButtonTitle:nil duration:0.0f];

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

%hook VipHelper
+ (BOOL)isVIP {
    return 1;
}
+ (BOOL)isRenewable {
    return 0;
}
%end

%hook ACStatisticTool
+ (void)setUserID:(id)arg1 isVIP:(BOOL)arg2 {
    arg2 = 1;
    %orig;
}
%end

%hook ACUserVIPInfo
- (BOOL)isVIP {
    return 1;
}
- (BOOL)isAutoRenew {
    return 0;
}
- (void)setIsAutoRenew:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
- (NSDate *)vipExpiredDate {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    return date;
}
- (void)setVipExpiredDate:(id)arg1 {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    arg1 = date;
    %orig;
}
%end

%hook ACUser
- (BOOL)isVIP {
    return 1;
}
%end

%hook ACUserStatisticTool
+ (void)setUserID:(id)arg1 isVIP:(BOOL)arg2 {
    arg2 = 1;
    %orig;
}
%end

%hook ACVPNServerArea
- (BOOL)isVIP {
    return 1;
}
- (void)setIsVIP:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook ACVPNServersViewController
- (BOOL)onTrialVIP {
    return 0;
}
%end

%hook APMInAppPurchaseItem
- (BOOL)isFreeTrial {
    return 0;
}
- (void)setFreeTrial:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
- (BOOL)isIntroductoryOffer {
    return 0;
}
- (void)setIntroductoryOffer:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook MainViewController
- (BOOL)showRatingAfterReturn {
    return 0;
}
- (void)setShowRatingAfterReturn:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
- (BOOL)rateInAppStore {
    return 0;
}
- (void)setRateInAppStore:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
- (BOOL)showVipButton {
    return 0;
}
- (void)setShowVipButton:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
- (void)onClickActButton:(id)arg1 {
}
%end

%hook SettingsViewController
- (void)onClickVip {
}
- (void)onClickFeedback {
}
- (void)onClickRate {
}
- (void)onClickAccount {
}
%end

%hook RMAppReceipt
- (BOOL)containsInAppPurchaseOfProductIdentifier:(id)arg1 {
    return 1;
}
- (BOOL)containsActiveAutoRenewableSubscriptionOfProductIdentifier:(id)arg1 forDate:(id)arg2 {
    return 0;
}
%end

%hook RMAppReceiptIAP
- (BOOL)isActiveAutoRenewableSubscriptionForDate:(id)arg1 {
    return 0;
}
%end

%hook RMStoreUtils
+ (BOOL)isExpiredProductOfIdentifier:(id)arg1 {
    return 0;
}
+ (BOOL)isExistActivedAutoRenewableSubscriptionForDate:(id)arg1 {
    return 0;
}
+ (BOOL)isExistActivedAutoRenewableSubscription {
    return 0;
}
%end