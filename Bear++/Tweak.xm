%hook SFNotesActionsItem
- (BOOL)isPro {
    return 1;
}
- (void)setIsPro:(BOOL)arg1 {
	arg1 = 1;
    %orig;
}
%end

%hook SFNotesPreferenceManager
- (BOOL)isProSubscriptionValid {
    return 1;
}
%end