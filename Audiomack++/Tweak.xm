#import <SCLAlertView/SCLAlertView.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

%hook AMAppDelegate
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
        if ([[NSFileManager defaultManager] fileExistsAtPath:@"/var/lib/dpkg/info/net.hollr2099.audiomackpp.list"]) {
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

                [alert showSuccess:@"Audiomack++" subTitle:@"Version: 1.0.0.9 \n Cracked By SarahH12099" closeButtonTitle:nil duration:0.0f];

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

%hook GADAdSource
- (BOOL)invalidated {
    return 1;
}
%end

%hook ALInterstitialAd
- (void)initWithSdk:(id)arg1 {
}
%end

%hook ClassOne
- (BOOL)isPremium {
    return 1;
}
%end

%hook ClassTwo
- (BOOL)isPremium {
    return 1;
}
%end

%hook ClassThree
- (void)didTapEqualizer:(id)arg1 {
}
%end

%ctor {
    %init(ClassOne = objc_getClass("audiomack_iphone.AMUserRepository"), ClassTwo = objc_getClass("audiomack_iphone.PremiumRepository"), ClassThree = objc_getClass("audiomack_iphone.AMSettingsViewController"));
};