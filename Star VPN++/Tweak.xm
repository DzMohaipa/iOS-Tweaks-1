%hook PCVPNLocation
- (BOOL)isPremium {
    return 1;
}
- (void)setPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook PCClient
- (double)expirationTime {
    NSString *dateStr = @"10-10-2099";
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSDate *date = [dateFormat dateFromString:dateStr];
    double final = [date timeIntervalSince1970];
    return final;
}
- (BOOL)isPremium {
    return 1;
}
%end

%hook PCLocationsViewController
- (BOOL)isPremium {
    return 1;
}
- (void)setPremium:(BOOL)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook PCLocationTableViewCell
- (void)updateWithLocation:(id)arg1 premium:(BOOL)arg2 {
    arg2 = 1;
    %orig;
}
%end