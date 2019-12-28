%hook ClassOne
- (BOOL)proStatus {
    return 1;
}
- (BOOL)purchasedThroughLogin {
    return 1;
}
%end

%hook ClassTwo
- (BOOL)isProPurchasedInternal {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Adguard.ConfigurationService"), ClassTwo = objc_getClass("Adguard.PurchaseService"));
};