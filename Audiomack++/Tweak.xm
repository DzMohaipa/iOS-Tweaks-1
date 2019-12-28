%hook GADAdSource
- (BOOL)invalidated {
    return 1;
}
%end

%hook ALInterstitialAd
- (void)initWithSdk:(id)arg1 {
}
%end

%hook ClassOne
- (BOOL)isPremium {
    return 1;
}
%end

%hook ClassTwo
- (BOOL)isPremium {
    return 1;
}
%end

%hook ClassThree
- (void)didTapEqualizer:(id)arg1 {
}
%end

%ctor {
    %init(ClassOne = objc_getClass("audiomack_iphone.AMUserRepository"), ClassTwo = objc_getClass("audiomack_iphone.PremiumRepository"), ClassThree = objc_getClass("audiomack_iphone.AMSettingsViewController"));
};