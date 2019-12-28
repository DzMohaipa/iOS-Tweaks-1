%hook DebugPremiumValidatorPreferences
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook WorkoutCalendarCell
- (void)configureForHomeWithWorkoutResults:(id)arg1 andDate:(id)arg2 userIsPremium:(BOOL)arg3 {
    arg3 = 1;
    %orig;
}
- (void)configureWithWorkoutResults:(id)arg1 andDate:(id)arg2 userIsPremium:(BOOL)arg3 {
    arg3 = 1;
    %orig;
}
- (void)setIconWithWorkoutResults:(id)arg1 assetPrefix:(id)arg2 andDate:(id)arg3 userIsPremium:(BOOL)arg4 {
    arg4 = 1;
    %orig;
}
%end

%hook PremiumTypeChecker
+ (BOOL)isPremiumForPremiumType:(int)arg1 {
    return 1;
}
%end

%hook PremiumStatusService
- (BOOL)isPremiumForType:(int)arg1 {
    return 1;
}
- (BOOL)premium {
    return 1;
}
- (void)setPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook GamesService
- (id)gameSessionForSceneName:(id)arg1 andIsPremium:(BOOL)arg2 {
    arg2 = 1;
    return %orig;
}
%end

%hook RelaxTipData
- (BOOL)isPremium {
    return 1;
}
- (void)setIsPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end