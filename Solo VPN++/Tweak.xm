%hook SFUserCenter
- (bool)isVip {
    return 1;
}
- (bool)isFreePremium {
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
- (void)setAutoRenew:(bool)arg1 {
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
- (bool)isAutoRenew {
    return 0;
}
%end

%hook SFVipHelper
- (bool)isVip {
    return 1;
}
- (bool)isFreePremium {
    return 0;
}
%end

%hook SFNetworkSpeedBar
- (bool)isVip {
    return 1;
}
- (void)setIsVIP:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SFVPNServerArea
- (bool)isVip {
    return 1;
}
- (void)setIsVIP:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end