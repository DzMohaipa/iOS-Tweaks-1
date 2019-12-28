%hook ClassOne
- (BOOL)hasFeature:(int64_t)arg1 {
    return 1;
}
- (BOOL)isPremiumMember {
    return 1;
}
- (BOOL)isProUser {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Cycles.SubscriptionPurchaseLog"));
};