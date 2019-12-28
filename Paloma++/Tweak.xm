%hook APNSubscription
- (bool)isActive {
    return 1;
}
%end

%hook APNSubscriptionsManager
- (bool)hasActiveSubscription {
    return 1;
}
- (bool)isActiveSubscriptionInFreeTrialPeriod {
    return 0;
}
- (bool)isFreeTrial {
    return 0;
}
- (void)setIsFreeTrial:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Paloma.AppDelegate"));
};