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