%hook ClassOne
- (bool)proStatus {
    return 1;
}
- (bool)purchasedThroughLogin {
    return 1;
}
%end

%hook ClassTwo
- (bool)isProPurchasedInternal {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("Adguard.ConfigurationService"), ClassTwo = objc_getClass("Adguard.PurchaseService"));
};