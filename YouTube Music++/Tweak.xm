%hook YTGlobalConfig
- (BOOL)alwaysShowVisitAdvertiser {
    return 0;
}
%end

%hook YTUpsell
- (BOOL)isCounterfactual {
    return 1;
}
%end

%hook YTIPlayerResponse
- (BOOL)ytm_isAudioOnlyPlayable {
    return 1;
}
- (id)ytm_audioOnlyUpsell {
    return NULL;
}
- (id)offlineUpsell {
    return NULL;
}
- (id)backgroundUpsell {
    return NULL;
}
- (BOOL)isMonetized {
    return 0;
}
- (BOOL)isPlayableInBackground {
    return 1;
}
%end

%hook YTSingleVideo
- (BOOL)isPlayableInPictureInPicture {
    return 1;
}
- (BOOL)isPlayableInBackground {
    return 1;
}
%end

%hook YTPlaybackData
- (BOOL)isPlayableInBackground {
    return 1;
}
%end

%hook YTIPlayabilityStatus
- (BOOL)isKoreanAgeVerificationRequired {
    return 0;
}
- (BOOL)isAgeCheckRequired {
    return 0;
}
- (BOOL)isContentCheckRequired {
    return 0;
}
- (BOOL)isPlayableInBackground {
    return 1;
}
- (BOOL)isPlayableInPictureInPicture {
    return 1;
}
- (id)offlineUpsell {
    return NULL;
}
- (id)backgroundUpsell {
    return NULL;
}
%end

%hook YTMVideoOverlayViewController
- (BOOL)isContentPanAllowed {
    return 1;
}
- (id)maybeShowUserEducation {
    return NULL;
}
- (id)maybeShowAudioOnlyUpsell {
    return NULL;
}
- (BOOL)isAVSwitchAvailable {
    return 1;
}
- (BOOL)showAVSwitchUserEducation {
    return 0;
}
- (BOOL)canDoubleTapForCurrentPlayerState {
    return 1;
}
- (BOOL)isAudioOnlyAuthorized {
    return 1;
}
- (void)setAVSwitchAvailable:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook YTMAudioCastUpsellDialogController
- (id)showAudioCastUpsellDialogWithUpsellParentResponder:(id)arg1 {
    return NULL;
}
%end

%hook YTMUpsellDialogController
- (id)showUpsellDialogWithUpsell:(id)arg1 upsellParentResponder:(id)arg2 {
    return NULL;
}
- (id)showUpsellDialogWithUpsellResponderEvent:(id)arg1 {
    return NULL;
}
- (id)showUpsellDialogWithUpsell:(id)arg1 videoID:(id)arg2 toastType:(int)arg3 upsellParentResponder:(id)arg4 {
    return NULL;
}
%end

%hook YTMSettings
- (BOOL)areHintsDisabled {
    return 1;
}
- (BOOL)doubleTapToSeekEnabled {
    return 1;
}
- (BOOL)isAudioQualitySettingsEnabled {
    return 1;
}
- (BOOL)allowAudioOnlyManualQualitySelection {
    return 1;
}
- (BOOL)allowRestrictedContentFlow {
    return 1;
}
- (void)setHintsDisabled:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook YTIBackgroundabilityRenderer
- (id)backgroundUpsell {
    return NULL;
}
%end

%hook YTMBackgroundUpsellNotificationController
- (id)removePendingBackgroundNotifications {
    return NULL;
}
- (id)maybeScheduleBackgroundUpsellNotification {
    return NULL;
}
%end

%hook YTMWatchViewController
- (BOOL)isAudioOnlyAuthorized:(id)arg1 {
    return 1;
}
%end

%hook YTMNavigationDrawerPromoView
- (id)init {
    return NULL;
}
%end

%hook YTDoubleTapToSeekController
- (void)enableDoubleTapToSeek:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (void)showDoubleTapToSeekEducationView:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook YTMContentViewController
- (id)showUpsellOrUserMessageForOfflineVideos:(id)arg1 offlineWatchEndpoint:(id)arg2 {
    return NULL;
}
%end

%hook YTIOfflineabilityRenderer
- (id)offlineUpsell {
    return NULL;
}
%end

%hook YTIOfflineState
- (id)offlineUpsell {
    return NULL;
}
%end

%hook YTPlayerPromoController
- (BOOL)showBackgroundabilityUpsell {
    return 0;
}
- (BOOL)showBackgroundOnboardingHint {
    return 0;
}
%end

%hook YTCarPlayController
- (void)setPremiumSubscriber:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
- (BOOL)isPremiumSubscriber {
    return 1;
}
%end