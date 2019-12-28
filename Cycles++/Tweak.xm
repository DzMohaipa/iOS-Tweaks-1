%hook ClassOne
- (bool)hasFeature:(int64_t)arg1 {
    return 1;
}
- (bool)isPremiumMember {
    return 1;
}
- (bool)isProUser {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Cycles.SubscriptionPurchaseLog"));
};