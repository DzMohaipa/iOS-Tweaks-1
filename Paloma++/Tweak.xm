%hook APNSubscription
- (BOOL)isActive {
    return 1;
}
%end

%hook APNSubscriptionsManager
- (BOOL)hasActiveSubscription {
    return 1;
}
- (BOOL)isActiveSubscriptionInFreeTrialPeriod {
    return 0;
}
- (BOOL)isFreeTrial {
    return 0;
}
- (void)setIsFreeTrial:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Paloma.AppDelegate"));
};