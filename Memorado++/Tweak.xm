%hook DebugPremiumValidatorPreferences
- (bool)isPremium {
    return 1;
}
- (void)setIsPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook WorkoutCalendarCell
- (void)configureForHomeWithWorkoutResults:(id)arg1 andDate:(id)arg2 userIsPremium:(bool)arg3 {
    arg3 = 1;
    %orig;
}
- (void)configureWithWorkoutResults:(id)arg1 andDate:(id)arg2 userIsPremium:(bool)arg3 {
    arg3 = 1;
    %orig;
}
- (void)setIconWithWorkoutResults:(id)arg1 assetPrefix:(id)arg2 andDate:(id)arg3 userIsPremium:(bool)arg4 {
    arg4 = 1;
    %orig;
}
%end

%hook PremiumTypeChecker
+ (bool)isPremiumForPremiumType:(int)arg1 {
    return 1;
}
%end

%hook PremiumStatusService
- (bool)isPremiumForType:(int)arg1 {
    return 1;
}
- (bool)premium {
    return 1;
}
- (void)setPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GamesService
- (id)gameSessionForSceneName:(id)arg1 andIsPremium:(bool)arg2 {
    arg2 = 1;
    return %orig;
}
%end

%hook RelaxTipData
- (bool)isPremium {
    return 1;
}
- (void)setIsPremium:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end