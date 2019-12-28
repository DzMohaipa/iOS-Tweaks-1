%hook AWInAppPurchaseController
- (bool)isPlatinumUnlocked {
    return 1;
}
- (bool)isAppVersionPlatinum {
    return 1;
}
- (bool)is25DayForecastEnabled {
    return 1;
}
- (bool)isPlatinumEnabled {
    return 1;
}
- (void)setPlatinumUnlocked:(bool)arg1 {
    arg1 = 1;
    %orig;
}
- (void)setIs25DayForecastEnabled:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end