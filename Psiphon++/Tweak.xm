%hook IAPStoreHelper
+ (BOOL)hasActiveSubscriptionForNowOnBlock:(id)arg1 {
    return 1;
}
+ (BOOL)hasActiveSubscriptionForNow {
    return 1;
}
+ (BOOL)hasActiveSubscriptionForDate:(id)arg1 {
    return 1;
}
+ (BOOL)hasActiveSubscriptionForDate:(id)arg1 getExpiryDate:(id *)arg2 {
    return 1;
}
+ (BOOL)hasActiveSubscriptionForDate:(id)arg1 inDict:(id)arg2 getExpiryDate:(id *)arg3 {
    return 1;
}
%end

%hook SettingsViewController
- (BOOL)hasActiveSubscription {
    return 1;
}
- (void)setHasActiveSubscription:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook IAPViewController
- (BOOL)hasActiveSubscription {
    return 1;
}
- (void)setHasActiveSubscription:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SubscriptionData
- (BOOL)hasActiveSubscriptionForNow {
    return 1;
}
- (BOOL)hasActiveAuthorizationForDate:(id)arg1 {
    return 1;
}
%end

%hook PsiCashClientModel
- (BOOL)hasActiveSpeedBoostPurchase {
    return 1;
}
%end

%hook InnerMeterView
- (BOOL)speedBoosting {
    return 1;
}
- (void)setSpeedBoosting:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end