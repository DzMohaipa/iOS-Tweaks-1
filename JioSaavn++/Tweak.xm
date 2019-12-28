%hook UserData
- (void)setProStatus:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (void)setFreemiumStatus:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
- (BOOL)skipLimitReached {
    return 0;
}
- (BOOL)isPro {
    return 1;
}
- (void)setIsPro:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (BOOL)isFreemium {
    return 0;
}
- (void)setIsFreemium:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook PaywallManager
+ (BOOL)isProRowUser {
    return 1;
}
%end

%hook DownloadingSongsVC
- (BOOL)areDownloadsBlocked {
    return 0;
}
%end

%hook SubscriptionManager
- (BOOL)isUserDormant {
    return 0;
}
- (BOOL)canOfferFreeTrial {
    return 0;
}
- (BOOL)isUserAnyPro {
    return 1;
}
- (BOOL)isSubscriptionPrimeProduct {
    return 1;
}
%end

%hook MediaCell
- (BOOL)isUnavailableReuseId {
    return 0;
}
- (BOOL)isUnavailable {
    return 0;
}
- (void)setIsUnavailable:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook AlbumVC
- (BOOL)isUnavailable {
    return 0;
}
%end