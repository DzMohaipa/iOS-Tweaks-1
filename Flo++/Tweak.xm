%hook Survey
- (BOOL)isPremium {
    return 1;
}
%end

%hook ClassOne
- (BOOL)isPremiumAvailable {
    return 1;
}
- (void)setIsPremiumAvailable:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (BOOL)isPremiumActive {
    return 1;
}
- (void)setIsPremiumActive:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (BOOL)isPremiumFeaturesAvailable {
    return 1;
}
%end

%hook ClassTwo
- (BOOL)isPremiumAvailable {
    return 1;
}
- (BOOL)isPremiumActive {
    return 1;
}
- (BOOL)isPremiumFeaturesAvailable {
    return 1;
}
%end

%ctor {
    %init(ClassOne = objc_getClass("PeriodTracker.PremiumManagerImpl"),ClassTwo = objc_getClass("PeriodTracker.PremiumFacadeImpl"));
};