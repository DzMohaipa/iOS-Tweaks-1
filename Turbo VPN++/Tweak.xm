%hook FlurryUtil
+ (BOOL)deviceIsJailbroken {
    return 0;
}
+ (BOOL)appIsCracked {
    return 0;
}
%end

%hook AppsFlyerUtils
+ (BOOL)isJailbroken {
    return 0;
}
%end

%hook ANSMetadata
- (BOOL)computeIsJailbroken {
    return 0;
}
- (BOOL)isJailbroken {
    return 0;
}
%end

%hook DUUrlRequestFilterManager
+ (BOOL)isJailBreak {
    return 0;
}
+ (BOOL)isJailBreak1 {
    return 0;
}
+ (BOOL)isJailBreak2 {
    return 0;
}
+ (BOOL)isJailBreak3 {
    return 0;
}
+ (BOOL)isJailBreak4 {
    return 0;
}
%end

%hook ACPrivateBrowserController
- (void)transitionInWithVPNConnected:(BOOL)arg1 serverIcon:(id)arg2 isVIP:(BOOL)arg3 {
    arg3 = 1;
    %orig;
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

%hook SubscriptionView
- (void)autoRenewSwitchClick:(id)arg1 {
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