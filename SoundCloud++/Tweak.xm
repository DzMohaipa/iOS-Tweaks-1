%hook TrackMetaDataEntity
- (BOOL)isOfflineSyncFeatureEnabled {
    return 1;
}
%end

%hook UserFeaturesService
- (BOOL)isOfflineSyncFeatureEnabled {
    return 1;
}
- (BOOL)isOfflineSyncEnabled {
    return 1;
}
- (void)disableOfflineSync {
}
- (BOOL)isKruxEnabled {
    return 1;
}
- (BOOL)isDevelopmentMenuEnabled {
    return 1;
}
- (BOOL)shouldRequestAds {
    return 0;
}
- (BOOL)isHQAudioFeatureEnabled {
    return 1;
}
%end

%hook OfflineSyncConfigurationDataSource
- (BOOL)isOfflineSyncFeatureEnabled {
    return 1;
}
- (BOOL)isOfflineSyncEnabled {
    return 1;
}
%end

%hook OfflineBaseService
- (BOOL)isOfflineSyncFeatureEnabled {
    return 1;
}
%end

%hook AdDownloader
- (BOOL)shouldRequestAds {
    return 0;
}
%end

%hook MobileApiUser
- (BOOL)isPro {
    return 1;
}
- (void)setIsPro:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook UserSocialRelationshipModel
- (BOOL)isPro {
    return 1;
}
- (void)setIsPro:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SearchUser
- (BOOL)isPro {
    return 1;
}
%end