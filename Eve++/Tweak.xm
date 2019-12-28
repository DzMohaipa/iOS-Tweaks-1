%hook ForumTopic
- (bool)isPremiumOnly {
    return 0;
}
%end

%hook ForumUser
- (bool)isPremium {
    return 1;
}
- (void)setIsPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GLChatRequestViewController
- (bool)isPremium {
    return 1;
}
- (void)setIsPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GLSKUserPlanStatus
- (bool)isActive {
    return 1;
}
- (bool)isRenewable {
    return 0;
}
- (bool)user:(int)arg1 hasActivePlan:(id)arg2 {
    return 1;
}
- (bool)isPremiumUser:(int)arg1 {
    return 1;
}
- (bool)isCurrentUserPremium {
    return 1;
}
%end

%hook LXUser
- (bool)isPremium {
    return 1;
}
- (bool)isPremiumOrBoughtAlc:(id)arg1 {
    return 1;
}
%end