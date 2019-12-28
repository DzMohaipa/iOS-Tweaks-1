%hook NavRootVC
- (UIView *)viewAds {
    return NULL;
}
%end

%hook ALInterstitialAd
- (void)initWithSdk:(id)arg1 {
}
%end

%hook Util
- (bool)isLimitTrackingAds {
    return 0;
}
%end