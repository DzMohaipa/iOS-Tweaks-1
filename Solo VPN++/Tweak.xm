%hook SFUserCenter
- (BOOL)isVip {
    return 1;
}
- (BOOL)isFreePremium {
    return 0;
}
- (void)setUsername:(id)arg1 {
    arg1 = @"SarahH12099";
    %orig;
}
- (void)setVipExpiredDate:(id)arg1 {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    arg1 = date;
    %orig;
}
- (void)setAutoRenew:(BOOL)arg1 {
    arg1 = 0;
    %orig;
}
- (NSString *)username {
    return @"SarahH12099";
}
- (NSDate *)vipExpiredDate {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    return date;
}
- (BOOL)isAutoRenew {
    return 0;
}
%end

%hook SFVipHelper
- (BOOL)isVip {
    return 1;
}
- (BOOL)isFreePremium {
    return 0;
}
%end

%hook SFNetworkSpeedBar
- (BOOL)isVip {
    return 1;
}
- (void)setIsVIP:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SFVPNServerArea
- (BOOL)isVip {
    return 1;
}
- (void)setIsVIP:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end