%hook ClassOne
- (void)validatePurchasesInternally {
}
- (bool)hasValidSubscription {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("MyPrivacy.SubscriptionManager"));
};