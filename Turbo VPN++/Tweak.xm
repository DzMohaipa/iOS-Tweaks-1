%hook FlurryUtil
+ (bool)deviceIsJailbroken {
    return 0;
}
+ (bool)appIsCracked {
    return 0;
}
%end

%hook AppsFlyerUtils
+ (bool)isJailbroken {
    return 0;
}
%end

%hook ANSMetadata
- (bool)computeIsJailbroken {
    return 0;
}
- (bool)isJailbroken {
    return 0;
}
%end

%hook DUUrlRequestFilterManager
+ (bool)isJailBreak {
    return 0;
}
+ (bool)isJailBreak1 {
    return 0;
}
+ (bool)isJailBreak2 {
    return 0;
}
+ (bool)isJailBreak3 {
    return 0;
}
+ (bool)isJailBreak4 {
    return 0;
}
%end

%hook ACPrivateBrowserController
- (void)transitionInWithVPNConnected:(bool)arg1 serverIcon:(id)arg2 isVIP:(bool)arg3 {
    arg3 = 1;
    %orig;
}
%end

%hook ACStatisticTool
+ (void)setUserID:(id)arg1 isVIP:(bool)arg2 {
    arg2 = 1;
    %orig;
}
%end

%hook ACUserVIPInfo
- (bool)isVIP {
    return 1;
}
- (bool)isAutoRenew {
    return 0;
}
- (void)setIsAutoRenew:(bool)arg1 {
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
- (bool)isVIP {
    return 1;
}
%end

%hook ACUserStatisticTool
+ (void)setUserID:(id)arg1 isVIP:(bool)arg2 {
    arg2 = 1;
    %orig;
}
%end

%hook ACVPNServerArea
- (bool)isVIP {
    return 1;
}
- (void)setIsVIP:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook APMInAppPurchaseItem
- (bool)isFreeTrial {
    return 0;
}
- (void)setFreeTrial:(bool)arg1 {
    arg1 = 0;
    %orig;
}
- (bool)isIntroductoryOffer {
    return 0;
}
- (void)setIntroductoryOffer:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook SubscriptionView
- (void)autoRenewSwitchClick:(id)arg1 {
}
%end

%hook RMAppReceipt
- (bool)containsInAppPurchaseOfProductIdentifier:(id)arg1 {
    return 1;
}
- (bool)containsActiveAutoRenewableSubscriptionOfProductIdentifier:(id)arg1 forDate:(id)arg2 {
    return 0;
}
%end

%hook RMAppReceiptIAP
- (bool)isActiveAutoRenewableSubscriptionForDate:(id)arg1 {
    return 0;
}
%end

%hook RMStoreUtils
+ (bool)isExpiredProductOfIdentifier:(id)arg1 {
    return 0;
}
+ (bool)isExistActivedAutoRenewableSubscriptionForDate:(id)arg1 {
    return 0;
}
+ (bool)isExistActivedAutoRenewableSubscription {
    return 0;
}
%end