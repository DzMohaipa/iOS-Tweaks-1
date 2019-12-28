%hook ClassOne
- (void)validatePurchasesInternally {
}
- (BOOL)hasValidSubscription {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("MyPrivacy.SubscriptionManager"));
};