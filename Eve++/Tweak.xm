%hook ForumTopic
- (BOOL)isPremiumOnly {
    return 0;
}
%end

%hook ForumUser
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GLChatRequestViewController
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GLSKUserPlanStatus
- (BOOL)isActive {
    return 1;
}
- (BOOL)isRenewable {
    return 0;
}
- (BOOL)user:(int)arg1 hasActivePlan:(id)arg2 {
    return 1;
}
- (BOOL)isPremiumUser:(int)arg1 {
    return 1;
}
- (BOOL)isCurrentUserPremium {
    return 1;
}
%end

%hook LXUser
- (BOOL)isPremium {
    return 1;
}
- (BOOL)isPremiumOrBoughtAlc:(id)arg1 {
    return 1;
}
%end