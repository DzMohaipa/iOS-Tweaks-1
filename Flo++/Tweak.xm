%hook Survey
- (bool)isPremium {
    return 1;
}
%end

%hook ClassOne
- (bool)isPremiumAvailable {
    return 1;
}
- (void)setIsPremiumAvailable:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (bool)isPremiumActive {
    return 1;
}
- (void)setIsPremiumActive:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (bool)isPremiumFeaturesAvailable {
    return 1;
}
%end

%hook ClassTwo
- (bool)isPremiumAvailable {
    return 1;
}
- (bool)isPremiumActive {
    return 1;
}
- (bool)isPremiumFeaturesAvailable {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("PeriodTracker.PremiumManagerImpl"),ClassTwo = objc_getClass("PeriodTracker.PremiumFacadeImpl"));
};