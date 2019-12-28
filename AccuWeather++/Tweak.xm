%hook AWInAppPurchaseController
- (BOOL)isPlatinumUnlocked {
    return 1;
}
- (BOOL)isAppVersionPlatinum {
    return 1;
}
- (BOOL)is25DayForecastEnabled {
    return 1;
}
- (BOOL)isPlatinumEnabled {
    return 1;
}
- (void)setPlatinumUnlocked:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (void)setIs25DayForecastEnabled:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end