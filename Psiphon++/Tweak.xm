%hook IAPStoreHelper
+ (bool)hasActiveSubscriptionForNowOnBlock:(id)arg1 {
    return 1;
}
+ (bool)hasActiveSubscriptionForNow {
    return 1;
}
+ (bool)hasActiveSubscriptionForDate:(id)arg1 {
    return 1;
}
+ (bool)hasActiveSubscriptionForDate:(id)arg1 getExpiryDate:(id *)arg2 {
    return 1;
}
+ (bool)hasActiveSubscriptionForDate:(id)arg1 inDict:(id)arg2 getExpiryDate:(id *)arg3 {
    return 1;
}
%end

%hook SettingsViewController
- (bool)hasActiveSubscription {
    return 1;
}
- (void)setHasActiveSubscription:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook IAPViewController
- (bool)hasActiveSubscription {
    return 1;
}
- (void)setHasActiveSubscription:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SubscriptionData
- (bool)hasActiveSubscriptionForNow {
    return 1;
}
- (bool)hasActiveAuthorizationForDate:(id)arg1 {
    return 1;
}
%end

%hook PsiCashClientModel
- (bool)hasActiveSpeedBoostPurchase {
    return 1;
}
%end

%hook InnerMeterView
- (bool)speedBoosting {
    return 1;
}
- (void)setSpeedBoosting:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end