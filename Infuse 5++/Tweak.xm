%hook FCInAppPurchaseServiceMobile
- (BOOL)hasValidReceipt {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
%end

%hook FCInAppPurchaseServiceDummy
- (BOOL)hasValidReceipt {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
%end

%hook FCInAppPurchaseServiceBase
- (BOOL)hasValidReceipt {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 {
    return 1;
}
%end

%hook FCInAppPurchaseServiceFullPro
- (BOOL)hasValidReceipt {
    return 1;
}
- (BOOL)isFeaturePurchased:(int64_t)arg1 tillDate:(id *)arg2 {
    return 1;
}
%end