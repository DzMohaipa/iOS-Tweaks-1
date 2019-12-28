%hook FCInAppPurchaseServiceMobile
- (bool)hasValidReceipt {
    return 1;
}
- (bool)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
%end

%hook FCInAppPurchaseServiceDummy
- (bool)hasValidReceipt {
    return 1;
}
- (bool)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
%end

%hook FCInAppPurchaseServiceBase
- (bool)hasValidReceipt {
    return 1;
}
- (bool)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
- (bool)isFeaturePurchased:(int64_t)arg1 {
    return 1;
}
%end

%hook FCInAppPurchaseServiceFullPro
- (bool)hasValidReceipt {
    return 1;
}
- (bool)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
%end